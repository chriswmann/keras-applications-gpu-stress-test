#!/usr/bin/env python3

import keras
from keras.applications.nasnet import preprocess_input, NASNetLarge

#from keras_applications.resnet import ResNet50, ResNet101, ResNet152
from keras.applications.resnet50 import ResNet50

from keras.layers import Dense, Conv2D, BatchNormalization, Activation
from keras.layers import AveragePooling2D, Input, Flatten
from keras.optimizers import Adam
from keras.callbacks import ModelCheckpoint, LearningRateScheduler
from keras.callbacks import ReduceLROnPlateau
from keras.preprocessing.image import ImageDataGenerator
from keras import backend as K
from keras.models import Model
from keras.datasets import cifar100
import numpy as np
import os

# Training parameters
batch_size = 32
epochs = 200
num_classes = 10

class KerasModel():
    '''Create, train and predict with a Keras neural network.
    '''

    def __init__(self,
                 model_spec='ResNet20',
                 include_top=True,
                 weights='imagenet',
                 input_tensor=None,
                 pooling='max',
                 classes=1000):

        self.model_spec = model
        self.include_top=include_top
        self.weights = weights
        self.input_tensor = input_tensor
        self.pooling = pooling
        self.classes = classes

        if not self.include_top:
            self.input_shape = (224, 224, 3)
        else:
            self.input_shape = None

        self.model_options = {
            'ResNet50': ResNet50,
            'ResNet101': ResNet101,
            'ResNet152': ResNet152,
            'NASNetLarge': NASNetLarge,
        }

        self.model = self.model_options[self.model_spec]

    def build_model(self):

        self.model = self.model(include_top=self.include_top,
                                weights=self.weights,
                                input_tensor=self.input_tensor,
                                pooling=self.pooling)

    def train_model(self):

        pass

    def predict(self):
                                                                                                                                                                                                                                                                                                                                                                                                                            
        pass

resnet50 = ResNet50(include_top=True,
                    weights='imagenet',
                    input_tensor=None,
                    input_shape=None,
                    pooling=None,
                    classes=1000)


nasnet_large = NASNetLarge(input_shape=None,
                           include_top=True,
                           weights='imagenet',
                           input_tensor=None,
                           pooling=None,
                           classes=1000)

(x_train, y_train), (x_test, y_test) = cifar100.load_data()

print(f'x_train shape: {x_train.shape}')
print(f'y_train shape: {y_train.shape}')
print(f'x_test shape: {x_test.shape}')
print(f'y_test shape: {y_test.shape}')
