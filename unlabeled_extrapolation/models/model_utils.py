
import torch
import torch.nn

def set_linear_layer(layer, coef, intercept):
    coef_tensor = torch.tensor(coef, dtype=layer.weight.dtype).cuda()
    bias_tensor = torch.tensor(intercept, dtype=layer.bias.dtype).cuda()
    coef_param = torch.nn.parameter.Parameter(coef_tensor)
    bias_param = torch.nn.parameter.Parameter(bias_tensor)
    layer.weight = coef_param
    layer.bias = bias_param

