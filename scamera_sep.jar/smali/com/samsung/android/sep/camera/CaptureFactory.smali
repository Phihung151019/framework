.class public Lcom/samsung/android/sep/camera/CaptureFactory;
.super Ljava/lang/Object;
.source "CaptureFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sep/camera/CaptureFactory$CaptureType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCaptureHelper(Lcom/samsung/android/sep/camera/CaptureFactory$CaptureType;Lcom/samsung/android/sep/camera/data/CaptureData;Lcom/samsung/android/sep/camera/ZoomController;Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;Lcom/samsung/android/sep/camera/data/ProcessorStateManager;Landroid/os/Handler;Landroid/os/Handler;Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;Lcom/samsung/android/sep/camera/data/ProcessRunnableData;)Lcom/samsung/android/sep/camera/CaptureHelper;
    .locals 11
    .param p0, "type"    # Lcom/samsung/android/sep/camera/CaptureFactory$CaptureType;
    .param p1, "captureData"    # Lcom/samsung/android/sep/camera/data/CaptureData;
    .param p2, "zoomController"    # Lcom/samsung/android/sep/camera/ZoomController;
    .param p3, "processorParameter"    # Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;
    .param p4, "processorStateManager"    # Lcom/samsung/android/sep/camera/data/ProcessorStateManager;
    .param p5, "processorHandler"    # Landroid/os/Handler;
    .param p6, "backgroundHandler"    # Landroid/os/Handler;
    .param p7, "abortManager"    # Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;
    .param p8, "runnableData"    # Lcom/samsung/android/sep/camera/data/ProcessRunnableData;

    .line 39
    invoke-virtual {p0}, Lcom/samsung/android/sep/camera/CaptureFactory$CaptureType;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :pswitch_0
    new-instance v1, Lcom/samsung/android/sep/camera/BurstCaptureHelper;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/sep/camera/BurstCaptureHelper;-><init>(Lcom/samsung/android/sep/camera/data/CaptureData;Lcom/samsung/android/sep/camera/ZoomController;Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;Lcom/samsung/android/sep/camera/data/ProcessorStateManager;Landroid/os/Handler;Landroid/os/Handler;Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;Lcom/samsung/android/sep/camera/data/ProcessRunnableData;)V

    return-object v1

    .line 41
    :pswitch_1
    new-instance v2, Lcom/samsung/android/sep/camera/SingleCaptureHelper;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v2 .. v10}, Lcom/samsung/android/sep/camera/SingleCaptureHelper;-><init>(Lcom/samsung/android/sep/camera/data/CaptureData;Lcom/samsung/android/sep/camera/ZoomController;Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;Lcom/samsung/android/sep/camera/data/ProcessorStateManager;Landroid/os/Handler;Landroid/os/Handler;Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;Lcom/samsung/android/sep/camera/data/ProcessRunnableData;)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
