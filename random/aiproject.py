import numpy as np

# Define a simple neural network with one input layer, one hidden layer, and one output layer
class NeuralNetwork:
    def __init__(self):
        # Initialize weights randomly
        self.weights_input_hidden = np.random.rand(3, 4)  # Adjust dimensions as needed
        self.weights_hidden_output = np.random.rand(4, 1)

    def sigmoid(self, x):
        return 1 / (1 + np.exp(-x))

    def forward(self, inputs):
        hidden_layer_input = np.dot(inputs, self.weights_input_hidden)
        hidden_layer_output = self.sigmoid(hidden_layer_input)
        output_layer_input = np.dot(hidden_layer_output, self.weights_hidden_output)
        output = self.sigmoid(output_layer_input)
        return output

# Example usage:
nn = NeuralNetwork()
input_data = np.array([[0.5, 0.3, 0.8]])  # Adjust input features
prediction = nn.forward(input_data)
print("Prediction:", prediction)
