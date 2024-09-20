package com.ssm;


import ai.djl.Model;
import ai.djl.modality.cv.transform.Resize;
import ai.djl.modality.cv.transform.ToTensor;
import ai.djl.modality.cv.transform.Normalize;
import ai.djl.ndarray.NDArray;
import ai.djl.ndarray.NDList;
import ai.djl.ndarray.NDManager;
import ai.djl.ndarray.types.Shape;
import ai.djl.training.loss.Loss;
import ai.djl.training.util.ProgressBar;
import ai.djl.translate.Pipeline;
import ai.djl.inference.Predictor;
import ai.djl.pytorch.engine.PtEngine;
import ai.djl.repository.zoo.*;


import java.nio.file.Paths;

public class PyTorchModelConversion {

    public static void main(String[] args) {
        try {
            // 创建一个 PyTorch 引擎实例
            PtEngine engine = (PtEngine) PtEngine.getInstance();

            // 创建一个 Criteria 对象来加载 PyTorch 模型
            Criteria<String, String> criteria = Criteria.builder()
                    .setTypes(String.class, String.class)
                    .optModelUrls("/static/ai/model_Finetune")
                    .build();
            // 加载 PyTorch 模型
            ZooModel<String, String> pyTorchModel = ModelZoo.loadModel(criteria);

            // 创建一个空白的 DJL 模型
            Model djlModel = Model.newInstance("djl_model");

            // 设置 PyTorch 模型参数到 DJL 模型中
            djlModel.setBlock(pyTorchModel.getBlock());

            // 保存 DJL 模型
//            djlModel.save(Paths.get("path_to_save_djl_model"), "pytorch_model");

            System.out.println("DJL 模型转换完成");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}