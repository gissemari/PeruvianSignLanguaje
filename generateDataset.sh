# copy utils folder into these directories
cp -r utils 2.Segmentation
cp -r utils 3.Translation/FrameToKeypoint

#cd _2_Segmentation
python 2.Segmentation/segmentPerSRT.py --rawVideoPath ./Data/Videos/RawVideo/ --srtPath ./Data/SRT/SRT_gestures/ --outputVideoPath ./Data/Videos/Segmented_gestures/ --flgGesture 1
#cd ..

#python 3.Translation/FrameToKeypoint/ConvertVideoToKeypoint.py --holistic

# errase created files to avoid confusions
rm -r 2.Segmentation/utils
rm -r 3.Translation/FrameToKeypoint/utils

echo "Press ENTER to exit:"
read ENTER