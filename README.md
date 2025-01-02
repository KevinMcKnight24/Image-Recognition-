# Image-Recognition-
This code is a convolutional neural net that is used for object recognition in Matlab. An image is sent in and goes through a series of layers to get a final output that can determine what class of object the image is. This project used the very well known CIFAR-10 dataset as it is well studied and works well for a simple image recognition program.
The neueral net implemented in this code is implemented in 18 stages. The main functions are Imnormalize, Convolve, ReLU, Maxpool, Fullconnect and Softmax.
Image Normalization or Imnormalize does exactly what it sounds like, it takes in an image and normalizes the image array to be used in the later stages.
Convolve will convolve the image with a series of predefined filters and bias values.
Rectified Linear Unit or ReLU just makes negative numbers become 0, since negative numbers are not possible.
Maxpool will take the image grid and select the highest elemenet from each 4x4 square in the image therefore reducing the image size 
Fullconnect, 
Softmax,
