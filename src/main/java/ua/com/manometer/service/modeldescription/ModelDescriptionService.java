package ua.com.manometer.service.modeldescription;

import ua.com.manometer.model.modeldescription.ModelDescription;

import java.util.List;

public interface ModelDescriptionService {

	 void updateDescription(ModelDescription modeldescription);

	 List<ModelDescription> listModelDescription();

	 void removeModelDescription(Integer id);

      List<ModelDescription> findListByIds(List<Integer> modelIds);


     ModelDescription getModelDescription(Integer model);
}
