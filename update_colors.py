#!/usr/bin/env python3
"""
Script to batch update Dart files to use AppColors instead of hardcoded colors.
This script performs find-and-replace operations for common color patterns.
"""

import os
import re
from pathlib import Path

# Color mappings from hardcoded values to AppColors
COLOR_REPLACEMENTS = {
    # Primary colors
    r'const Color\(0xFF007AFF\)': 'AppColors.primary',
    r'const Color\(0xFF13a4ec\)': 'AppColors.primaryAlt',
    r'const Color\(0xFF13C8EC\)': 'AppColors.primaryAlt',
    
    # Background colors - Dark
    r'const Color\(0xFF101a22\)': 'AppColors.backgroundDark',
    r'const Color\(0xFF101F22\)': 'AppColors.backgroundDark',
    r'const Color\(0xFF1A2A2D\)': 'AppColors.cardDarkAlt',
    r'const Color\(0xFF1F2937\)': 'AppColors.cardDark',
    
    # Border colors
    r'const Color\(0xFF374151\)': 'AppColors.borderDark',
    r'const Color\(0xFFE5E7EB\)': 'AppColors.borderLight',
    
    # Text colors - Light
    r'const Color\(0xFF111518\)': 'AppColors.textPrimaryLight',
    r'const Color\(0xFF111827\)': 'AppColors.textPrimaryLight',
    r'const Color\(0xFF181111\)': 'AppColors.textPrimaryLight',
    r'const Color\(0xFF333333\)': 'AppColors.textSecondaryLight',
    r'const Color\(0xFF6B7280\)': 'AppColors.textTertiaryLight',
    r'const Color\(0xFF886364\)': 'AppColors.textTertiaryLight',
    r'const Color\(0xFF757575\)': 'AppColors.textMutedLight',
    
    # Text colors - Dark
    r'const Color\(0xFFE0E0E0\)': 'AppColors.textSecondaryDark',
    r'const Color\(0xFF9CA3AF\)': 'AppColors.textTertiaryDark',
    r'const Color\(0xFFBDBDBD\)': 'AppColors.textMutedDark',
    
    # Surface colors
    r'const Color\(0xFFF3F4F6\)': 'AppColors.surfaceLight',
    
    # Status colors
    r'const Color\(0xFF34C759\)': 'AppColors.success',
    r'const Color\(0xFFFF3B30\)': 'AppColors.error',
    
    # Special cases - Colors.white and Colors.black in context
    # These need manual review as they might be intentional
}

def add_import_if_needed(content: str) -> str:
    """Add AppColors import if not already present."""
    import_statement = "import 'package:medi_track/core/constants/app_colors.dart';"
    
    # Check if already imported
    if import_statement in content:
        return content
    
    # Find the last import statement
    import_pattern = r"import\s+['\"].*?['\"];"
    imports = list(re.finditer(import_pattern, content))
    
    if imports:
        last_import = imports[-1]
        # Insert after the last import
        insert_pos = last_import.end()
        content = content[:insert_pos] + '\n' + import_statement + content[insert_pos:]
    
    return content

def replace_colors(content: str) -> tuple[str, int]:
    """Replace hardcoded colors with AppColors constants."""
    replacements_made = 0
    
    for pattern, replacement in COLOR_REPLACEMENTS.items():
        new_content, count = re.subn(pattern, replacement, content)
        if count > 0:
            content = new_content
            replacements_made += count
    
    return content, replacements_made

def process_file(file_path: Path) -> bool:
    """Process a single Dart file."""
    try:
        with open(file_path, 'r', encoding='utf-8') as f:
            content = f.read()
        
        # Replace colors
        new_content, replacements = replace_colors(content)
        
        if replacements > 0:
            # Add import if needed
            new_content = add_import_if_needed(new_content)
            
            # Write back
            with open(file_path, 'w', encoding='utf-8') as f:
                f.write(new_content)
            
            print(f"✓ {file_path}: {replacements} replacements")
            return True
        
        return False
    
    except Exception as e:
        print(f"✗ Error processing {file_path}: {e}")
        return False

def main():
    """Main function to process all Dart files in lib/modules."""
    lib_modules = Path('lib/modules')
    
    if not lib_modules.exists():
        print(f"Error: {lib_modules} not found")
        return
    
    dart_files = list(lib_modules.rglob('*.dart'))
    print(f"Found {len(dart_files)} Dart files to process\n")
    
    processed = 0
    for dart_file in dart_files:
        if process_file(dart_file):
            processed += 1
    
    print(f"\n✓ Processed {processed} files")

if __name__ == '__main__':
    main()
