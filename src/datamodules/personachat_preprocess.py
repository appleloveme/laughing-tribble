from argparse import ArgumentParser
from datasets import load_dataset


dataset = load_dataset("../data/personachat/conv_ai_2.py", cache_dir="../data/personachat")
dataset



# if __name__ == "__main__":
#     parser = ArgumentParser("Personachat Dataset Preprocessing")
#     parser.add_argument(
#         "--dataset_path",
#         type=str,
#         default=
#         "./data/personachat/personachat_self_original.json")
#     parser.add_argument("--roberta", action="store_true")
#     parser.add_argument("--train_valid_split", type=float, default=0.1)
#     parser.add_argument("--max_source_length", type=int, default=32)
#     parser.add_argument("--max_target_length", type=int, default=32)
#     parser.add_argument(
#         "--encoder_model_name_or_path",
#         type=str,
#         default="./pretrained_models/bert/bert-base-uncased")
#
#     parser.add_argument("--dataset_type",
#                         type=str,
#                         default='convai2',
#                         required=True)  # convai2, ecdt2019
#     args = parser.parse_args()
#     preprocess(args)
