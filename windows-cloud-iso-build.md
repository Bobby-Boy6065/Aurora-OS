# Build Aurora OS ISO without installing Linux locally

This project includes a GitHub Actions cloud-build workflow. GitHub's hosted Ubuntu runner does the Linux build; you can use Windows and a browser to start it and download the ISO.


## Steps
1. Create a GitHub account if needed and create a new repository. Choose **Private** if you want the source kept private.
2. Extract this Aurora OS ZIP on Windows.
3. Upload the contents of the `aurora_os` folder to the repository (make sure `.github/workflows/build-iso.yml` is included; hidden folders can be easy to miss).
4. Open the repository's **Actions** tab. If prompted, enable Actions.
5. Select **Build Aurora OS ISO**, click **Run workflow**, then run it on the `main` branch.
6. Wait for the workflow to finish. If it succeeds, open the completed run and download the `Aurora-OS-Surface-Pro-3-ISO` artifact.

The workflow currently checks that an ISO larger than 100 MB was produced before uploading. GitHub Actions is not guaranteed to succeed: build failures are shown in the workflow logs and must be fixed before the image is used.


## Important safety note
The ISO is not hardware-validated for Surface Pro 3. Boot the USB in live mode and test touch, Wi-Fi, sound, sleep/wake, battery, keyboard and pen before installing. Back up the SSD. Do not install or erase the internal drive until the installer has been verified.
