import io
import numpy as np
from torch import nn
import torch.onnx
import torch.nn as nn
import torch.nn.init as init
import json
from ezkl import export

"""
2 Layer MLP with ReLU
"""
class Model(nn.Module):
    def __init__(self, inplace=False):
        super(Model, self).__init__()

        self.aff1 = nn.Linear(3,3)
        self.relu1 = nn.ReLU()
        self.aff2 = nn.Linear(3,2)
        self.relu2 = nn.ReLU()
        self._initialize_weights()

    def forward(self, x):
        x =  self.aff1(x)
        x =  self.relu1(x)
        x =  self.aff2(x)
        x =  self.relu2(x)
        return (x)


    def _initialize_weights(self):
        init.orthogonal_(self.aff1.weight)
        init.orthogonal_(self.aff2.weight)

circuit = Model()
export(circuit, input_shape = [3])
