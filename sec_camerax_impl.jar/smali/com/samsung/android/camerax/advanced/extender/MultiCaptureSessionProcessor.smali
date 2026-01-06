.class public abstract Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;
.super Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;
.source "MultiCaptureSessionProcessor.java"


# instance fields
.field protected final mExtensionProperty:Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;


# direct methods
.method public static synthetic $r8$lambda$3qkWba2zp4k1oSuqrySDmv8e6Sg(Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->lambda$addCaptureRequestsLocked$1(Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8Ek1S_CqSAnkOGv4qhxtWTU80tU(Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->lambda$prepareRawStream$5(Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "extensionMetadata"    # Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;
    .param p3, "extensionProperty"    # Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;-><init>(Ljava/lang/String;Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;)V

    .line 62
    iput-object p3, p0, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->mExtensionProperty:Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;

    .line 63
    return-void
.end method

.method private createBurstRequest(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 16
    .param p1, "latestResult"    # Landroid/hardware/camera2/TotalCaptureResult;
    .param p2, "dynamicShotInfo"    # Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;
    .param p3, "physicalId"    # Ljava/lang/String;
    .param p5, "postviewRequested"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/TotalCaptureResult;",
            "Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;",
            ">;Z)V"
        }
    .end annotation

    .line 147
    .local p4, "requestList":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;>;"
    move-object/from16 v0, p0

    move-object/from16 v6, p4

    move/from16 v7, p5

    invoke-static/range {p1 .. p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    .line 148
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 149
    .local v8, "captureDuration":I
    iget-object v1, v0, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createBurstRequest "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", capture dur. = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "ms, id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v5, p3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, ", postview = "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    nop

    .line 153
    invoke-virtual {v4}, Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;->getDynamicShotMode()I

    move-result v1

    .line 152
    invoke-static {v1}, Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode;->getDsMode(I)Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode;

    move-result-object v9

    .line 154
    .local v9, "dynamicShotMode":Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode;
    const/4 v1, 0x1

    new-array v3, v1, [Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$Property;

    sget-object v10, Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$Property;->SEPARATED_COMP_CAPTURE:Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$Property;

    aput-object v10, v3, v2

    invoke-virtual {v9, v3}, Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode;->hasProperty([Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$Property;)Z

    move-result v10

    .line 156
    .local v10, "isDsModeNeedSeparatedCompCapture":Z
    if-eqz v7, :cond_0

    iget-object v3, v0, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->mCaptureOutputConfigMap:Ljava/util/Map;

    sget-object v11, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;->POSTVIEW:Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

    invoke-interface {v3, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    move v11, v1

    .line 158
    .local v11, "needPostview":Z
    invoke-virtual {v4}, Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;->getDynamicShotCondition()I

    move-result v1

    .line 161
    .local v1, "dsCondition":I
    invoke-virtual {v4}, Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;->getDynamicShotMode()I

    move-result v3

    const/4 v12, 0x2

    if-eqz v3, :cond_6

    .line 163
    if-eqz v10, :cond_1

    if-eqz v11, :cond_1

    .line 164
    add-int/lit8 v1, v1, 0x1

    .line 165
    iget-object v2, v0, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    .line 166
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    .line 165
    const-string v14, "add pic count of dsCondition to 0x%X"

    invoke-static {v3, v14, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v13, v1

    goto :goto_1

    .line 169
    :cond_1
    move v13, v1

    .end local v1    # "dsCondition":I
    .local v13, "dsCondition":I
    :goto_1
    const/4 v1, 0x0

    .local v1, "offset":I
    :goto_2
    invoke-virtual {v4}, Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;->getDynamicShotCount()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 170
    iget-object v2, v0, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "shot count = "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    new-instance v2, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    iget-object v3, v0, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    iget-object v14, v0, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->mExtensionClient:Lcom/samsung/android/camerax/advanced/api/IExtensionClient;

    invoke-direct {v2, v3, v14}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;-><init>(Landroid/hardware/camera2/CameraCharacteristics;Lcom/samsung/android/camerax/advanced/api/IExtensionClient;)V

    .line 173
    invoke-virtual {v2, v12}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->setTemplateId(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    move-result-object v2

    .line 174
    invoke-virtual {v2, v13}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->setDynamicShotHint(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    move-result-object v2

    .line 175
    invoke-virtual {v4}, Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;->getDynamicShotExtraInfo()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->setDynamicShotExtraInfo(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    move-result-object v2

    .line 176
    invoke-virtual {v4}, Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;->getDynamicShotDeviceInfo()J

    move-result-wide v14

    invoke-virtual {v2, v14, v15}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->setDynamicShotDeviceInfo(J)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    move-result-object v2

    .line 177
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->setCapturePhysicalId(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->mExtensionProperty:Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;

    .line 178
    invoke-virtual {v3}, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;->getHdrMode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->setHdrMode(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->mExtensionProperty:Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;

    .line 179
    invoke-virtual {v3}, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;->getLightConditionMode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->setLightConditionMode(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 180
    invoke-static {v3}, Lcom/samsung/android/camerax/advanced/util/CameraCharacteristicsUtil;->getFaceDetectMode(Landroid/hardware/camera2/CameraCharacteristics;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->setFaceDetectMode(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    move-result-object v14

    .line 183
    .local v14, "builder":Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;
    invoke-virtual {v0, v14}, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->applyParameterLocked(Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;)V

    .line 185
    if-nez v1, :cond_3

    if-eqz v11, :cond_3

    .line 186
    if-eqz v10, :cond_2

    .line 187
    iget-object v2, v0, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->TAG:Ljava/lang/String;

    const-string v3, "add separated compressed capture for postview"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v2, v0, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->mCaptureOutputConfigMap:Ljava/util/Map;

    sget-object v3, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;->POSTVIEW:Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

    .line 189
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

    invoke-interface {v2}, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;->getId()I

    move-result v2

    .line 188
    invoke-virtual {v14, v2}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->addTargetOutputConfigIds(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    .line 190
    const/16 v2, 0xc8

    invoke-virtual {v14, v2}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->setCaptureStageId(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    .line 192
    invoke-virtual {v14}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->build()Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object v2, v0, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->mCaptureOutputConfigMap:Ljava/util/Map;

    sget-object v3, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;->POSTVIEW:Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

    .line 195
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

    invoke-interface {v2}, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;->getId()I

    move-result v2

    .line 194
    invoke-virtual {v14, v2}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->removeTargetOutputConfigIds(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    goto :goto_3

    .line 197
    :cond_2
    iget-object v2, v0, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->TAG:Ljava/lang/String;

    const-string v3, "add combined compressed capture for postview"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v2, v0, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->mCaptureOutputConfigMap:Ljava/util/Map;

    sget-object v3, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;->POSTVIEW:Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

    .line 199
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

    invoke-interface {v2}, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;->getId()I

    move-result v2

    .line 198
    invoke-virtual {v14, v2}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->addTargetOutputConfigIds(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    .line 203
    :cond_3
    :goto_3
    iget-object v2, v0, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->mCaptureOutputConfigMap:Ljava/util/Map;

    sget-object v3, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;->YUV:Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

    .line 205
    .local v15, "outputConfig":Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;
    invoke-virtual {v9, v1}, Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode;->getCaptureIndexInfo(I)Lcom/samsung/android/camerax/advanced/vendor/CaptureIndexInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/camerax/advanced/vendor/CaptureIndexInfo;->isNeedRawCapture()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 206
    iget-object v2, v0, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->mCaptureOutputConfigMap:Ljava/util/Map;

    .line 208
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->getDynamicFovStreamType(Landroid/hardware/camera2/TotalCaptureResult;)Ljava/lang/Integer;

    move-result-object v3

    .line 209
    invoke-virtual {v4}, Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;->getDynamicShotCount()I

    move-result v5

    .line 207
    move-object v12, v4

    move v4, v1

    move-object v1, v12

    move-object v12, v2

    move-object/from16 v2, p3

    .end local v1    # "offset":I
    .local v4, "offset":I
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->getRawPicType(Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;Ljava/lang/String;Ljava/lang/Integer;II)Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

    move-result-object v3

    .line 206
    invoke-interface {v12, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

    goto :goto_4

    .line 205
    .end local v4    # "offset":I
    .restart local v1    # "offset":I
    :cond_4
    move v4, v1

    .line 212
    .end local v1    # "offset":I
    .restart local v4    # "offset":I
    :goto_4
    add-int/lit8 v1, v4, 0x0

    invoke-virtual {v14, v1}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->setCaptureStageId(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    .line 213
    invoke-interface {v15}, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;->getId()I

    move-result v1

    invoke-virtual {v14, v1}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->addTargetOutputConfigIds(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    .line 215
    invoke-virtual {v14}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->build()Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    .end local v14    # "builder":Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;
    .end local v15    # "outputConfig":Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;
    add-int/lit8 v1, v4, 0x1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    const/4 v12, 0x2

    .end local v4    # "offset":I
    .restart local v1    # "offset":I
    goto/16 :goto_2

    :cond_5
    move v4, v1

    .end local v1    # "offset":I
    .restart local v4    # "offset":I
    move v1, v13

    .end local v4    # "offset":I
    goto :goto_5

    .line 220
    .end local v13    # "dsCondition":I
    .local v1, "dsCondition":I
    :cond_6
    new-instance v3, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    iget-object v4, v0, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    iget-object v5, v0, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->mExtensionClient:Lcom/samsung/android/camerax/advanced/api/IExtensionClient;

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;-><init>(Landroid/hardware/camera2/CameraCharacteristics;Lcom/samsung/android/camerax/advanced/api/IExtensionClient;)V

    iget-object v4, v0, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->mCaptureOutputConfigMap:Ljava/util/Map;

    sget-object v5, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;->YUV:Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

    .line 221
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

    invoke-interface {v4}, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->addTargetOutputConfigIds(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    move-result-object v3

    .line 222
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->setTemplateId(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    move-result-object v3

    .line 223
    invoke-virtual {v3, v2}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->setCaptureStageId(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    move-result-object v2

    .line 224
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;->getDynamicShotCondition()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->setDynamicShotHint(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    move-result-object v2

    .line 225
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;->getDynamicShotExtraInfo()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->setDynamicShotExtraInfo(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    move-result-object v2

    .line 226
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;->getDynamicShotDeviceInfo()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->setDynamicShotDeviceInfo(J)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->mExtensionProperty:Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;

    .line 227
    invoke-virtual {v3}, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;->getHdrMode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->setHdrMode(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->mExtensionProperty:Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;

    .line 228
    invoke-virtual {v3}, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;->getLightConditionMode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->setLightConditionMode(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 230
    invoke-static {v3}, Lcom/samsung/android/camerax/advanced/util/CameraCharacteristicsUtil;->getFaceDetectMode(Landroid/hardware/camera2/CameraCharacteristics;)I

    move-result v3

    .line 229
    invoke-virtual {v2, v3}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->setFaceDetectMode(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    move-result-object v2

    .line 232
    .local v2, "builder":Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;
    iget-object v3, v0, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->mCaptureOutputConfigMap:Ljava/util/Map;

    sget-object v4, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;->POSTVIEW:Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor$$ExternalSyntheticLambda5;

    invoke-direct {v4, v7, v2}, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor$$ExternalSyntheticLambda5;-><init>(ZLcom/samsung/android/camerax/advanced/extender/RequestBuilder;)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 239
    invoke-virtual {v0, v2}, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->applyParameterLocked(Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;)V

    .line 240
    invoke-virtual {v2}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->build()Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    .end local v2    # "builder":Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;
    :goto_5
    return-void
.end method

.method private createSingleRequest(Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;Ljava/util/List;Z)V
    .locals 3
    .param p1, "dynamicShotInfo"    # Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;
    .param p3, "postviewRequested"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;",
            "Ljava/util/List<",
            "Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;",
            ">;Z)V"
        }
    .end annotation

    .line 119
    .local p2, "requestList":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;>;"
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->TAG:Ljava/lang/String;

    const-string v1, "createSinglePicture"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    new-instance v0, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->mExtensionClient:Lcom/samsung/android/camerax/advanced/api/IExtensionClient;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;-><init>(Landroid/hardware/camera2/CameraCharacteristics;Lcom/samsung/android/camerax/advanced/api/IExtensionClient;)V

    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->mCaptureOutputConfigMap:Ljava/util/Map;

    sget-object v2, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;->YUV:Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

    .line 122
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

    invoke-interface {v1}, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->addTargetOutputConfigIds(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    move-result-object v0

    .line 123
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->setTemplateId(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    move-result-object v0

    .line 124
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->setCaptureStageId(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    move-result-object v0

    .line 125
    invoke-virtual {p1}, Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;->getDynamicShotCondition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->setDynamicShotHint(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    move-result-object v0

    .line 126
    invoke-virtual {p1}, Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;->getDynamicShotExtraInfo()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->setDynamicShotExtraInfo(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    move-result-object v0

    .line 127
    invoke-virtual {p1}, Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;->getDynamicShotDeviceInfo()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->setDynamicShotDeviceInfo(J)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->mExtensionProperty:Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;

    .line 128
    invoke-virtual {v1}, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;->getHdrMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->setHdrMode(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->mExtensionProperty:Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;

    .line 129
    invoke-virtual {v1}, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;->getLightConditionMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->setLightConditionMode(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 131
    invoke-static {v1}, Lcom/samsung/android/camerax/advanced/util/CameraCharacteristicsUtil;->getFaceDetectMode(Landroid/hardware/camera2/CameraCharacteristics;)I

    move-result v1

    .line 130
    invoke-virtual {v0, v1}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->setFaceDetectMode(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    move-result-object v0

    .line 133
    .local v0, "builder":Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->mCaptureOutputConfigMap:Ljava/util/Map;

    sget-object v2, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;->POSTVIEW:Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor$$ExternalSyntheticLambda3;

    invoke-direct {v2, p3, v0}, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor$$ExternalSyntheticLambda3;-><init>(ZLcom/samsung/android/camerax/advanced/extender/RequestBuilder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 139
    invoke-virtual {p0, v0}, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->applyParameterLocked(Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;)V

    .line 140
    invoke-virtual {v0}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->build()Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    return-void
.end method

.method private getDynamicFovStreamType(Landroid/hardware/camera2/TotalCaptureResult;)Ljava/lang/Integer;
    .locals 2
    .param p1, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 326
    const/4 v0, 0x0

    .line 328
    .local v0, "fovType":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v1}, Lcom/samsung/android/camerax/advanced/util/CameraCharacteristicsUtil;->isDynamicFovSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 330
    sget-object v1, Lcom/samsung/android/camerax/advanced/vendor/SecCameraCaptureResultKey;->SENSOR_STREAM_TYPE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/Integer;

    .line 333
    :cond_0
    return-object v0
.end method

.method private getRawPicType(Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;Ljava/lang/String;Ljava/lang/Integer;II)Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;
    .locals 10
    .param p1, "dynamicShotInfo"    # Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;
    .param p2, "physicalId"    # Ljava/lang/String;
    .param p3, "dFovStreamType"    # Ljava/lang/Integer;
    .param p4, "shotCountIndex"    # I
    .param p5, "totalShotCount"    # I

    .line 348
    sget-object v0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;->RAW_FIFTH:Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

    sget-object v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;->RAW_FOURTH:Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

    sget-object v2, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;->RAW_THIRD:Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

    sget-object v3, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;->RAW_SECOND:Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

    invoke-static {v0, v1, v2, v3}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "getRawPicType - picType %s, %s"

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

    .line 350
    .local v1, "picType":Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;
    iget-object v3, p0, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->mCaptureOutputConfigMap:Ljava/util/Map;

    .line 351
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl;

    .line 353
    .local v5, "rawConfig":Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl;
    move-object v4, p0

    move-object v7, p1

    move-object v6, p2

    move v8, p4

    move v9, p5

    .end local p1    # "dynamicShotInfo":Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;
    .end local p2    # "physicalId":Ljava/lang/String;
    .end local p4    # "shotCountIndex":I
    .end local p5    # "totalShotCount":I
    .local v6, "physicalId":Ljava/lang/String;
    .local v7, "dynamicShotInfo":Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;
    .local v8, "shotCountIndex":I
    .local v9, "totalShotCount":I
    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->isPicCbImgSizeSelected(Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl;Ljava/lang/String;Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 355
    iget-object p1, v4, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->TAG:Ljava/lang/String;

    sget-object p2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    filled-new-array {v1, v5}, [Ljava/lang/Object;

    move-result-object p4

    invoke-static {p2, v2, p4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    return-object v1

    .line 359
    .end local v1    # "picType":Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;
    .end local v5    # "rawConfig":Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl;
    :cond_0
    move-object p2, v6

    move-object p1, v7

    move p4, v8

    move p5, v9

    goto :goto_0

    .line 361
    .end local v6    # "physicalId":Ljava/lang/String;
    .end local v7    # "dynamicShotInfo":Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;
    .end local v8    # "shotCountIndex":I
    .end local v9    # "totalShotCount":I
    .restart local p1    # "dynamicShotInfo":Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;
    .restart local p2    # "physicalId":Ljava/lang/String;
    .restart local p4    # "shotCountIndex":I
    .restart local p5    # "totalShotCount":I
    :cond_1
    move-object v4, p0

    move-object v7, p1

    move-object v6, p2

    move v8, p4

    move v9, p5

    .end local p1    # "dynamicShotInfo":Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;
    .end local p2    # "physicalId":Ljava/lang/String;
    .end local p4    # "shotCountIndex":I
    .end local p5    # "totalShotCount":I
    .restart local v6    # "physicalId":Ljava/lang/String;
    .restart local v7    # "dynamicShotInfo":Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;
    .restart local v8    # "shotCountIndex":I
    .restart local v9    # "totalShotCount":I
    iget-object p1, v4, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->TAG:Ljava/lang/String;

    sget-object p2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    sget-object p4, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;->RAW_FIRST:Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

    iget-object p5, v4, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->mCaptureOutputConfigMap:Ljava/util/Map;

    sget-object v0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;->RAW_FIRST:Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

    .line 362
    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    filled-new-array {p4, p5}, [Ljava/lang/Object;

    move-result-object p4

    .line 361
    invoke-static {p2, v2, p4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    sget-object p1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;->RAW_FIRST:Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

    return-object p1
.end method

.method private isPicCbImgSizeSelected(Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl;Ljava/lang/String;Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;II)Z
    .locals 5
    .param p1, "rawConfig"    # Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl;
    .param p2, "physicalId"    # Ljava/lang/String;
    .param p3, "dynamicShotInfo"    # Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;
    .param p4, "shotCountIndex"    # I
    .param p5, "totalShotCount"    # I

    .line 375
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl;->getPhysicalCameraId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 379
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->mCameraId:Ljava/lang/String;

    filled-new-array {v2, p2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 380
    .local v1, "cameraIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    nop

    .line 381
    invoke-virtual {p3}, Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;->getDynamicShotMode()I

    move-result v2

    .line 380
    invoke-static {v2}, Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode;->getDsMode(I)Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode;

    move-result-object v2

    .line 382
    .local v2, "dynamicShotMode":Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode;
    invoke-virtual {v2, p4, p5}, Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode;->getSensorPixelModeForRaw(II)Lcom/samsung/android/camerax/advanced/vendor/SensorPixelMode;

    move-result-object v3

    .line 385
    .local v3, "dsSensorPixelMode":Lcom/samsung/android/camerax/advanced/vendor/SensorPixelMode;
    invoke-virtual {p1}, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl;->getPhysicalCameraId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 386
    invoke-virtual {p1}, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl;->getSensorPixelMode()Lcom/samsung/android/camerax/advanced/vendor/SensorPixelMode;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 385
    :goto_0
    return v0

    .line 376
    .end local v1    # "cameraIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "dynamicShotMode":Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode;
    .end local v3    # "dsSensorPixelMode":Lcom/samsung/android/camerax/advanced/vendor/SensorPixelMode;
    :cond_2
    :goto_1
    return v0
.end method

.method static synthetic lambda$addCaptureRequestsLocked$0(Landroid/hardware/camera2/TotalCaptureResult;)Ljava/lang/String;
    .locals 1
    .param p0, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 79
    sget-object v0, Lcom/samsung/android/camerax/advanced/vendor/SecCameraCaptureResultKey;->CONTROL_RUNNING_PHYSICAL_ID:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private synthetic lambda$addCaptureRequestsLocked$1(Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;)V
    .locals 5
    .param p1, "request"    # Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;

    .line 109
    invoke-interface {p1}, Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;->getTargetOutputConfigIds()Ljava/util/List;

    move-result-object v0

    .line 110
    .local v0, "configIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object v1, p1

    check-cast v1, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder$RequestProcessorRequest;

    invoke-virtual {v1}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder$RequestProcessorRequest;->getCaptureStageId()I

    move-result v1

    .line 111
    .local v1, "stageId":I
    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stage = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> output id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void
.end method

.method static synthetic lambda$createBurstRequest$3(Landroid/hardware/camera2/TotalCaptureResult;)Ljava/lang/Integer;
    .locals 1
    .param p0, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 147
    sget-object v0, Lcom/samsung/android/camerax/advanced/vendor/SecCameraCaptureResultKey;->CONTROL_DYNAMIC_SHOT_CAPTURE_DURATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic lambda$createBurstRequest$4(ZLcom/samsung/android/camerax/advanced/extender/RequestBuilder;Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;)V
    .locals 1
    .param p0, "postviewRequested"    # Z
    .param p1, "builder"    # Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;
    .param p2, "config"    # Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

    .line 234
    if-eqz p0, :cond_0

    .line 235
    invoke-interface {p2}, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->addTargetOutputConfigIds(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    .line 237
    :cond_0
    return-void
.end method

.method static synthetic lambda$createSingleRequest$2(ZLcom/samsung/android/camerax/advanced/extender/RequestBuilder;Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;)V
    .locals 1
    .param p0, "postviewRequested"    # Z
    .param p1, "builder"    # Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;
    .param p2, "config"    # Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

    .line 134
    if-eqz p0, :cond_0

    .line 135
    invoke-interface {p2}, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->addTargetOutputConfigIds(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    .line 137
    :cond_0
    return-void
.end method

.method private synthetic lambda$prepareRawStream$5(Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;)V
    .locals 3
    .param p1, "config"    # Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;

    .line 266
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Config : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected addCaptureRequestsLocked(Landroid/hardware/camera2/TotalCaptureResult;Ljava/util/List;Z)V
    .locals 8
    .param p1, "latestResult"    # Landroid/hardware/camera2/TotalCaptureResult;
    .param p3, "postviewRequested"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/TotalCaptureResult;",
            "Ljava/util/List<",
            "Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;",
            ">;Z)V"
        }
    .end annotation

    .line 76
    .local p2, "requestList":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;>;"
    new-instance v0, Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;

    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;-><init>(Landroid/hardware/camera2/TotalCaptureResult;Landroid/hardware/camera2/CameraCharacteristics;)V

    move-object v4, v0

    .line 78
    .local v4, "dynamicShotInfo":Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->mCameraId:Ljava/lang/String;

    .line 79
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 82
    .local v5, "physicalId":Ljava/lang/String;
    iget-boolean v0, p0, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->mCaptureProcessingEnabled:Z

    if-eqz v0, :cond_2

    .line 83
    invoke-virtual {p0, v4}, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->isProcessingCapture(Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    move v7, p3

    .end local p1    # "latestResult":Landroid/hardware/camera2/TotalCaptureResult;
    .end local p2    # "requestList":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;>;"
    .end local p3    # "postviewRequested":Z
    .local v3, "latestResult":Landroid/hardware/camera2/TotalCaptureResult;
    .local v6, "requestList":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;>;"
    .local v7, "postviewRequested":Z
    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->createBurstRequest(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;Ljava/lang/String;Ljava/util/List;Z)V

    goto :goto_0

    .line 86
    .end local v3    # "latestResult":Landroid/hardware/camera2/TotalCaptureResult;
    .end local v6    # "requestList":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;>;"
    .end local v7    # "postviewRequested":Z
    .restart local p1    # "latestResult":Landroid/hardware/camera2/TotalCaptureResult;
    .restart local p2    # "requestList":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;>;"
    .restart local p3    # "postviewRequested":Z
    :cond_0
    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    move v7, p3

    .end local p1    # "latestResult":Landroid/hardware/camera2/TotalCaptureResult;
    .end local p2    # "requestList":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;>;"
    .end local p3    # "postviewRequested":Z
    .restart local v3    # "latestResult":Landroid/hardware/camera2/TotalCaptureResult;
    .restart local v6    # "requestList":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;>;"
    .restart local v7    # "postviewRequested":Z
    invoke-virtual {v4}, Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;->getDynamicShotMode()I

    move-result p1

    if-eqz p1, :cond_1

    .line 89
    new-instance p1, Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;

    const/4 p2, 0x0

    iget-object p3, v2, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {p1, p2, p3}, Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;-><init>(Landroid/hardware/camera2/TotalCaptureResult;Landroid/hardware/camera2/CameraCharacteristics;)V

    invoke-direct {p0, p1, v6, v7}, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->createSingleRequest(Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;Ljava/util/List;Z)V

    .line 91
    if-eqz v3, :cond_3

    .line 92
    invoke-virtual {v3}, Landroid/hardware/camera2/TotalCaptureResult;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/camerax/advanced/vendor/SecCameraCaptureResultKey;->CONTROL_DYNAMIC_SHOT_CONDITION:Landroid/hardware/camera2/CaptureResult$Key;

    .line 93
    const/4 p3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 92
    invoke-virtual {p1, p2, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 94
    invoke-virtual {v3}, Landroid/hardware/camera2/TotalCaptureResult;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/camerax/advanced/vendor/SecCameraCaptureResultKey;->CONTROL_DYNAMIC_SHOT_EXTRA_INFO:Landroid/hardware/camera2/CaptureResult$Key;

    .line 95
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 94
    invoke-virtual {p1, p2, p3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 96
    invoke-virtual {v3}, Landroid/hardware/camera2/TotalCaptureResult;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/camerax/advanced/vendor/SecCameraCaptureResultKey;->CONTROL_DYNAMIC_SHOT_DEVICE_INFO:Landroid/hardware/camera2/CaptureResult$Key;

    .line 97
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    .line 96
    invoke-virtual {p1, p2, p3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 101
    :cond_1
    invoke-direct {p0, v4, v6, v7}, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->createSingleRequest(Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;Ljava/util/List;Z)V

    goto :goto_0

    .line 105
    .end local v3    # "latestResult":Landroid/hardware/camera2/TotalCaptureResult;
    .end local v6    # "requestList":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;>;"
    .end local v7    # "postviewRequested":Z
    .restart local p1    # "latestResult":Landroid/hardware/camera2/TotalCaptureResult;
    .restart local p2    # "requestList":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;>;"
    .restart local p3    # "postviewRequested":Z
    :cond_2
    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    move v7, p3

    .end local p1    # "latestResult":Landroid/hardware/camera2/TotalCaptureResult;
    .end local p2    # "requestList":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;>;"
    .end local p3    # "postviewRequested":Z
    .restart local v3    # "latestResult":Landroid/hardware/camera2/TotalCaptureResult;
    .restart local v6    # "requestList":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;>;"
    .restart local v7    # "postviewRequested":Z
    invoke-super {p0, v3, v6, v7}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->addCaptureRequestsLocked(Landroid/hardware/camera2/TotalCaptureResult;Ljava/util/List;Z)V

    .line 108
    :cond_3
    :goto_0
    new-instance p1, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;)V

    invoke-interface {v6, p1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 114
    iget-object p1, v2, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Capturing with capture request size "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void
.end method

.method protected applyRepeatingRequestParameterLocked(Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;)V
    .locals 2
    .param p1, "builder"    # Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    .line 67
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->mExtensionProperty:Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;

    invoke-virtual {v0}, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;->getHdrMode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->setHdrMode(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->mExtensionProperty:Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;

    .line 68
    invoke-virtual {v1}, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;->getLightConditionMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->setLightConditionMode(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 70
    invoke-static {v1}, Lcom/samsung/android/camerax/advanced/util/CameraCharacteristicsUtil;->getFaceDetectMode(Landroid/hardware/camera2/CameraCharacteristics;)I

    move-result v1

    .line 69
    invoke-virtual {v0, v1}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->setFaceDetectMode(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    .line 71
    return-void
.end method

.method protected abstract isProcessingCapture(Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;)Z
.end method

.method protected prepareRawStream(Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;Ljava/util/List;)V
    .locals 17
    .param p1, "sessionConfigBuilder"    # Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;",
            "Ljava/util/List<",
            "Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;",
            ">;)V"
        }
    .end annotation

    .line 256
    .local p2, "rawStreamConfigList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-boolean v3, v0, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->mCaptureProcessingEnabled:Z

    if-nez v3, :cond_0

    .line 257
    iget-object v3, v0, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->TAG:Ljava/lang/String;

    const-string v4, "prepareRawStream - no capture processing is needed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    return-void

    .line 260
    :cond_0
    iget-object v3, v0, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->mCaptureOutputSurface:Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;

    invoke-interface {v3}, Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;->getSurface()Landroid/view/Surface;

    move-result-object v3

    if-nez v3, :cond_1

    .line 261
    iget-object v3, v0, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->TAG:Ljava/lang/String;

    const-string v4, "prepareRawStream - no capture surface is supplied from app"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return-void

    .line 265
    :cond_1
    iget-object v3, v0, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prepareRawStream: raw stream config size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor$$ExternalSyntheticLambda2;

    invoke-direct {v4, v0}, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 268
    iget-object v3, v0, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v3}, Lcom/samsung/android/camerax/advanced/util/CameraCharacteristicsUtil;->isSingleCamSupportMultiRawStreamSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 270
    iget-object v3, v0, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->mCaptureOutputSurface:Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;

    .line 271
    invoke-interface {v3}, Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;->getSize()Landroid/util/Size;

    move-result-object v3

    .line 270
    invoke-static {v2, v3}, Lcom/samsung/android/camerax/advanced/vendor/StreamConfigUtils;->getFirstOverFitRawStreamConfig(Ljava/util/List;Landroid/util/Size;)Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;

    move-result-object v3

    .line 272
    .local v3, "rawStreamConfig":Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;
    if-eqz v3, :cond_2

    .line 273
    invoke-virtual {v3}, Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;->getSize()Landroid/util/Size;

    move-result-object v4

    .line 274
    .local v4, "rawStreamSize":Landroid/util/Size;
    const/4 v5, 0x2

    .line 276
    .local v5, "option":I
    nop

    .line 278
    invoke-virtual {v3}, Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;->getFormat()I

    move-result v6

    sget-object v7, Lcom/samsung/android/camerax/advanced/vendor/SensorPixelMode;->MODE_DEFAULT:Lcom/samsung/android/camerax/advanced/vendor/SensorPixelMode;

    .line 279
    invoke-virtual {v3}, Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;->getDeviceId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 276
    invoke-static {v4, v6, v7, v8}, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder;->newRawStreamConfig(Landroid/util/Size;ILcom/samsung/android/camerax/advanced/vendor/SensorPixelMode;Ljava/lang/String;)Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder;

    move-result-object v6

    .line 280
    .local v6, "builder":Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder;
    invoke-virtual {v6, v5}, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder;->setStreamOption(I)V

    .line 281
    invoke-virtual {v6}, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder;->build()Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$OutputConfigImpl;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl;

    .line 283
    .local v7, "config":Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl;
    iget-object v8, v0, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->mCaptureOutputConfigMap:Ljava/util/Map;

    sget-object v9, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;->RAW_FIRST:Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    invoke-virtual {v7}, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl;->getOriginalConfig()Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;->addOutputConfig(Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;)Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;

    .line 286
    iget-object v8, v0, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "prepareRawStream: multi raw, output config id = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl;->getId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    .end local v4    # "rawStreamSize":Landroid/util/Size;
    .end local v5    # "option":I
    .end local v6    # "builder":Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder;
    .end local v7    # "config":Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl;
    :cond_2
    return-void

    .line 291
    .end local v3    # "rawStreamConfig":Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;
    :cond_3
    sget-object v3, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;->RAW_FIRST:Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

    sget-object v4, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;->RAW_SECOND:Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

    sget-object v5, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;->RAW_THIRD:Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

    sget-object v6, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;->RAW_FOURTH:Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

    sget-object v7, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;->RAW_FIFTH:Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

    invoke-static {v3, v4, v5, v6, v7}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 293
    .local v3, "rawTypeList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 294
    .local v4, "rawListSize":I
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_0
    if-ge v5, v4, :cond_5

    .line 295
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;

    .line 297
    .local v6, "rawStreamConfig":Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;
    invoke-virtual {v6}, Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;->getSize()Landroid/util/Size;

    move-result-object v7

    .line 298
    .local v7, "rawStreamSize":Landroid/util/Size;
    invoke-virtual {v6}, Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;->getDeviceId()I

    move-result v8

    .line 299
    .local v8, "physicalId":I
    invoke-virtual {v6}, Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;->getSensorPixelMode()Lcom/samsung/android/camerax/advanced/vendor/SensorPixelMode;

    move-result-object v9

    .line 300
    .local v9, "sensorPixelMode":Lcom/samsung/android/camerax/advanced/vendor/SensorPixelMode;
    invoke-virtual {v6}, Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;->getFormat()I

    move-result v10

    .line 302
    .local v10, "rawFormat":I
    nop

    .line 303
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    .line 302
    invoke-static {v7, v10, v9, v11}, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder;->newRawStreamConfig(Landroid/util/Size;ILcom/samsung/android/camerax/advanced/vendor/SensorPixelMode;Ljava/lang/String;)Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder;

    move-result-object v11

    .line 305
    .local v11, "builder":Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder;
    const/4 v12, 0x2

    if-nez v5, :cond_4

    .line 306
    goto :goto_1

    .line 307
    :cond_4
    shl-int/lit8 v13, v8, 0x10

    or-int/2addr v12, v13

    :goto_1
    nop

    .line 310
    .local v12, "option":I
    invoke-virtual {v11, v12}, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder;->setStreamOption(I)V

    .line 311
    invoke-virtual {v11}, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder;->build()Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$OutputConfigImpl;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl;

    .line 313
    .local v13, "config":Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl;
    iget-object v14, v0, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->mCaptureOutputConfigMap:Ljava/util/Map;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

    invoke-interface {v14, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    invoke-virtual {v13}, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl;->getOriginalConfig()Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

    move-result-object v14

    invoke-virtual {v1, v14}, Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;->addOutputConfig(Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;)Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;

    .line 316
    iget-object v14, v0, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->TAG:Ljava/lang/String;

    sget-object v15, Ljava/util/Locale;->UK:Ljava/util/Locale;

    add-int/lit8 v16, v5, 0x1

    .line 318
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13}, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl;->getId()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1, v13}, [Ljava/lang/Object;

    move-result-object v0

    .line 317
    const-string v1, "prepareRawStream: #%d raw, output config id = %s, %s"

    invoke-static {v15, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 316
    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    .end local v6    # "rawStreamConfig":Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;
    .end local v7    # "rawStreamSize":Landroid/util/Size;
    .end local v8    # "physicalId":I
    .end local v9    # "sensorPixelMode":Lcom/samsung/android/camerax/advanced/vendor/SensorPixelMode;
    .end local v10    # "rawFormat":I
    .end local v11    # "builder":Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder;
    .end local v12    # "option":I
    .end local v13    # "config":Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl;
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_0

    .line 320
    .end local v5    # "index":I
    :cond_5
    return-void
.end method
