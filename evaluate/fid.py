import torch
from torchmetrics.image.fid import FrechetInceptionDistance
from PIL import Image
import os
from torchvision import transforms

# 图像预处理变换
transform = transforms.Compose([
    transforms.Resize((299, 299)),
    transforms.ToTensor(),  # 转换为 [0, 1] 范围的 float32
    transforms.Lambda(lambda x: (x * 255).to(torch.uint8))  # 转换为 [0, 255] 范围的 uint8
])

# 读取图像并预处理
def load_and_preprocess_image(image_path):
    image = Image.open(image_path).convert("RGB")
    image = transform(image)
    return image

# 初始化 FID 计算
fid = FrechetInceptionDistance(feature=2048)

# 文件夹路径
real_images_dir =  "/scratch/project_2011211/hamid/data/test_largest_one"
generated_images_dir ="/scratch/project_2011211/hamid/data/fake_frames"
# 更新 FID 计算 - 真实图像
for image_name in os.listdir(real_images_dir):
    image_path = os.path.join(real_images_dir, image_name)
    image_tensor = load_and_preprocess_image(image_path).unsqueeze(0)
    fid.update(image_tensor, real=True)

# 更新 FID 计算 - 生成图像
for image_name in os.listdir(generated_images_dir):
    image_path = os.path.join(generated_images_dir, image_name)
    image_tensor = load_and_preprocess_image(image_path).unsqueeze(0)
    fid.update(image_tensor, real=False)

# 计算 FID 分数
fid_score = fid.compute()
print(f"FID Score: {fid_score}")