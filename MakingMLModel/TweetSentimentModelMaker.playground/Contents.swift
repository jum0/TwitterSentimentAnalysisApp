import Cocoa
import CreateML


let data = try MLDataTable(contentsOf: URL(fileURLWithPath: "/Users/hanjunmo/Downloads/twitter-sanders-apple3.csv"))

let (trainingData, testingData) = data.randomSplit(by: 0.8, seed: 5)

let sentimentClassifier = try MLTextClassifier(trainingData: trainingData, textColumn: "text", labelColumn: "class")

let evaluationMetrics = sentimentClassifier.evaluation(on: testingData, textColumn: "text", labelColumn: "class")

let evaluationAccuracy = (1.0 - evaluationMetrics.classificationError) *  100

let metadata = MLModelMetadata(author: "Junmo Han", shortDescription: "A model trained to classify sentiment on Tweets", version: "1.0")

try sentimentClassifier.write(to: URL(fileURLWithPath: "/Users/hanjunmo/Downloads/TweetSentimentClassifier.mlmodel"))

try sentimentClassifier.prediction(from: "@Apple is crazy!")
try sentimentClassifier.prediction(from: "umm I don't think so.")
try sentimentClassifier.prediction(from: "I'm dying of love")
