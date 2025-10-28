// image_picker_section.dart
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:medi_track/modules/register_module/providers/register_provider.dart';

class ImagePickerSection extends StatelessWidget {
  const ImagePickerSection({super.key});

  @override
  Widget build(BuildContext context) {
    final registerProvider = Provider.of<RegisterProvider>(context);
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Center(
        child: Stack(
          children: [
            Container(
              width: 96,
              height: 96,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: theme.colorScheme.primary.withValues(alpha: 0.1),
                border: Border.all(
                  color: theme.colorScheme.primary.withValues(alpha: 0.3),
                  width: 2,
                ),
              ),
              child: registerProvider.pickedImage != null
                  ? ClipOval(
                      child: Image.file(
                        registerProvider.pickedImage!,
                        fit: BoxFit.cover,
                        width: 96,
                        height: 96,
                      ),
                    )
                  : Icon(
                      Icons.person,
                      size: 48,
                      color: theme.colorScheme.primary.withValues(alpha: 0.5),
                    ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: theme.colorScheme.surface,
                    width: 2,
                  ),
                ),
                child: IconButton(
                  padding: EdgeInsets.zero,
                  iconSize: 16,
                  icon: Icon(
                    registerProvider.pickedImage != null
                        ? Icons.edit
                        : Icons.add_a_photo,
                    color: Colors.white,
                  ),
                  onPressed: () => _showImagePickerBottomSheet(context),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showImagePickerBottomSheet(BuildContext context) {
    final registerProvider = Provider.of<RegisterProvider>(
      context,
      listen: false,
    );

    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SafeArea(
          child: Wrap(
            children: [
              ListTile(
                leading: Icon(Icons.photo_library),
                title: Text('Choose from Gallery'),
                onTap: () {
                  registerProvider.pickImage(ImageSource.gallery);
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: Icon(Icons.photo_camera),
                title: Text('Take a Picture'),
                onTap: () {
                  registerProvider.pickImage(ImageSource.camera);
                  Navigator.of(context).pop();
                },
              ),
              if (registerProvider.pickedImage != null)
                ListTile(
                  leading: Icon(Icons.delete, color: Colors.red),
                  title: Text(
                    'Remove Photo',
                    style: TextStyle(color: Colors.red),
                  ),
                  onTap: () {
                    registerProvider.removeImage();
                    Navigator.of(context).pop();
                  },
                ),
            ],
          ),
        );
      },
    );
  }
}
