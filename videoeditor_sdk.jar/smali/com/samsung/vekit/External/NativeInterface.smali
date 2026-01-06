.class public Lcom/samsung/vekit/External/NativeInterface;
.super Ljava/lang/Object;
.source "NativeInterface.java"


# static fields
.field private static final MAX_ALLOWED_INSTANCES:I = 0x1

.field private static sInstanceIdCnt:Ljava/lang/Integer;

.field private static final sInstances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/vekit/External/NativeInterface;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mInstanceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/samsung/vekit/External/NativeInterface;->sInstanceIdCnt:Ljava/lang/Integer;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/samsung/vekit/External/NativeInterface;->sInstances:Ljava/util/HashMap;

    .line 34
    new-instance v0, Lcom/samsung/vekit/External/NativeLibSetup;

    invoke-direct {v0}, Lcom/samsung/vekit/External/NativeLibSetup;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/vekit/External/NativeLibSetup;->init()V

    .line 35
    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/samsung/vekit/External/NativeInterface;->mInstanceId:I

    .line 41
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/vekit/External/NativeInterface;
    .locals 7

    const-class v0, Lcom/samsung/vekit/External/NativeInterface;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lcom/samsung/vekit/External/NativeInterface;->sInstances:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 45
    .local v1, "size":I
    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 46
    sget-object v3, Lcom/samsung/vekit/External/NativeInterface;->sInstances:Ljava/util/HashMap;

    sget-object v4, Lcom/samsung/vekit/External/NativeInterface;->sInstanceIdCnt:Ljava/lang/Integer;

    new-instance v5, Lcom/samsung/vekit/External/NativeInterface;

    sget-object v6, Lcom/samsung/vekit/External/NativeInterface;->sInstanceIdCnt:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, v6}, Lcom/samsung/vekit/External/NativeInterface;-><init>(I)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v3, Lcom/samsung/vekit/External/NativeInterface;->sInstances:Ljava/util/HashMap;

    sget-object v4, Lcom/samsung/vekit/External/NativeInterface;->sInstanceIdCnt:Ljava/lang/Integer;

    sget-object v5, Lcom/samsung/vekit/External/NativeInterface;->sInstanceIdCnt:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sput-object v2, Lcom/samsung/vekit/External/NativeInterface;->sInstanceIdCnt:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/vekit/External/NativeInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v2

    .line 49
    :cond_0
    :try_start_1
    const-string v2, "NativeInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERROR already Max native interface instances("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") running"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 43
    .end local v1    # "size":I
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static declared-synchronized releaseInstance(Lcom/samsung/vekit/External/NativeInterface;)V
    .locals 3
    .param p0, "nativeInterface"    # Lcom/samsung/vekit/External/NativeInterface;

    const-class v0, Lcom/samsung/vekit/External/NativeInterface;

    monitor-enter v0

    .line 54
    if-eqz p0, :cond_0

    .line 55
    :try_start_0
    sget-object v1, Lcom/samsung/vekit/External/NativeInterface;->sInstances:Ljava/util/HashMap;

    iget v2, p0, Lcom/samsung/vekit/External/NativeInterface;->mInstanceId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 53
    .end local p0    # "nativeInterface":Lcom/samsung/vekit/External/NativeInterface;
    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 57
    .restart local p0    # "nativeInterface":Lcom/samsung/vekit/External/NativeInterface;
    :cond_0
    :goto_0
    monitor-exit v0

    return-void
.end method


# virtual methods
.method public native animate()V
.end method

.method public native attach(Lcom/samsung/vekit/Common/Object/Element;I)V
.end method

.method public native attach(Lcom/samsung/vekit/Common/Object/Element;II)V
.end method

.method public native attach(Lcom/samsung/vekit/Common/Object/Element;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Common/Object/Element;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public native attachAnimation(Lcom/samsung/vekit/Common/Object/Element;I)V
.end method

.method public native attachStroke(Lcom/samsung/vekit/Common/Object/Element;Lcom/samsung/vekit/Common/Object/DoodleStroke;)V
.end method

.method public native cancelAnimation()V
.end method

.method public native captureAnimatedFrame(Lcom/samsung/vekit/Common/Object/Element;II)Landroid/graphics/Bitmap;
.end method

.method public native captureLatestFrame(II)Landroid/graphics/Bitmap;
.end method

.method public native captureStaticDoodle(Lcom/samsung/vekit/Common/Object/Element;II)Landroid/graphics/Bitmap;
.end method

.method public native captureSuperHDRFrame(Lcom/samsung/vekit/Common/Object/Element;IIII)Landroid/graphics/Bitmap;
.end method

.method public native changePortraitVideoFocus(Lcom/samsung/vekit/Common/Object/Element;II)V
.end method

.method public native changePortraitVideoFocus(Lcom/samsung/vekit/Common/Object/Element;Lcom/samsung/vekit/Common/Object/PVDetectionInfo;)V
.end method

.method public native changePortraitVideoKeyFrame(Lcom/samsung/vekit/Common/Object/Element;Lcom/samsung/vekit/Common/Object/PVKeyFrame;)V
.end method

.method public native changePortraitVideoKeyFrameList(Lcom/samsung/vekit/Common/Object/Element;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Common/Object/Element;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Common/Object/PVKeyFrame;",
            ">;)V"
        }
    .end annotation
.end method

.method public native clear(Lcom/samsung/vekit/Common/Object/Element;)V
.end method

.method public native clearAnimations(Lcom/samsung/vekit/Common/Object/Element;)V
.end method

.method public native create(Lcom/samsung/vekit/Common/Object/Element;)V
.end method

.method public native createFramework(Lcom/samsung/vekit/Control/VEController;)V
.end method

.method public native deletePortraitVideoKeyFrame(Lcom/samsung/vekit/Common/Object/Element;I)V
.end method

.method public native detach(Lcom/samsung/vekit/Common/Object/Element;I)V
.end method

.method public native detachAnimation(Lcom/samsung/vekit/Common/Object/Element;I)V
.end method

.method public native detachStroke(Lcom/samsung/vekit/Common/Object/Element;)V
.end method

.method public native drawDoodle(Lcom/samsung/vekit/Common/Object/Element;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Common/Object/Element;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Common/Object/DoodlePoint;",
            ">;)V"
        }
    .end annotation
.end method

.method public native finalizeFramework()V
.end method

.method public native finishDoodle(Lcom/samsung/vekit/Common/Object/Element;)V
.end method

.method public native getCurrentAnalyzedPosition()J
.end method

.method public native getCurrentMediaPosition()J
.end method

.method public native getExportPosition()J
.end method

.method public native getFrcSupportInfo(I)Lcom/samsung/vekit/Common/Object/FrcSupportInfo;
.end method

.method public native initializeFramework(Landroid/view/Surface;IIIILcom/samsung/vekit/Common/Type/ViewMode;Lcom/samsung/vekit/Common/Type/FrameworkType;)V
.end method

.method public native loadAnalyzeSolution(Lcom/samsung/vekit/Common/Type/AnalyzeType;)V
.end method

.method public native loadDoodle(Lcom/samsung/vekit/Common/Object/Element;)V
.end method

.method public native pause()V
.end method

.method public native pauseAnalyze()J
.end method

.method public native pauseExport()J
.end method

.method public native play()V
.end method

.method public native releaseFramework()V
.end method

.method public native remove(Lcom/samsung/vekit/Common/Type/ElementType;I)V
.end method

.method public native resizeGraphicBuffers(II)Z
.end method

.method public native resumeAnalyze(J)V
.end method

.method public native resumeExport(J)V
.end method

.method public native saveDoodle(Lcom/samsung/vekit/Common/Object/Element;)V
.end method

.method public native seekTo(JLcom/samsung/vekit/Common/Type/SeekType;)V
.end method

.method public native setAnalyzeInfo(Lcom/samsung/vekit/Common/Object/AnalyzeInfo;)V
.end method

.method public native setExportInfo(Lcom/samsung/vekit/Common/Object/ExportInfo;)V
.end method

.method public native setPreviewInfo(Lcom/samsung/vekit/Common/Object/PreviewInfo;)V
.end method

.method public native show()V
.end method

.method public native startAnalyze()V
.end method

.method public native startDoodle(Lcom/samsung/vekit/Common/Object/Element;Lcom/samsung/vekit/Common/Object/DoodleStroke;)V
.end method

.method public native stop()V
.end method

.method public native stopAnalyze()V
.end method

.method public native swap(Lcom/samsung/vekit/Common/Object/Element;II)V
.end method

.method public native unloadAnalyzeSolution(Lcom/samsung/vekit/Common/Type/AnalyzeType;)V
.end method

.method public native update(Lcom/samsung/vekit/Common/Object/Element;)V
.end method

.method public native updateViewport(IIII)V
.end method
