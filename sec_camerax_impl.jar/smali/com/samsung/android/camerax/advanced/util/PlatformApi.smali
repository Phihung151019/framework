.class public Lcom/samsung/android/camerax/advanced/util/PlatformApi;
.super Ljava/lang/Object;
.source "PlatformApi.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static createCaptureRequest(JLjava/util/Map;)Landroid/hardware/camera2/CaptureRequest;
    .locals 7
    .param p0, "vendorId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/hardware/camera2/CaptureRequest;"
        }
    .end annotation

    .line 36
    .local p2, "parameters":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/camera2/CaptureRequest$Key<*>;Ljava/lang/Object;>;"
    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    move-object v2, v0

    .line 37
    .local v2, "metadataNative":Landroid/hardware/camera2/impl/CameraMetadataNative;
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v2, p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setVendorId(J)V

    .line 40
    :cond_0
    new-instance v1, Landroid/hardware/camera2/CaptureRequest$Builder;

    const-string v5, "0"

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-direct/range {v1 .. v6}, Landroid/hardware/camera2/CaptureRequest$Builder;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;ZILjava/lang/String;Ljava/util/Set;)V

    .line 43
    .local v1, "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CaptureRequest$Key;

    .line 44
    .local v3, "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<*>;"
    move-object v4, v3

    .line 45
    .local v4, "objKey":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<Ljava/lang/Object;>;"
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 46
    .end local v3    # "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<*>;"
    .end local v4    # "objKey":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<Ljava/lang/Object;>;"
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    return-object v0
.end method

.method public static getVendorId(Landroid/hardware/camera2/CameraCharacteristics;)J
    .locals 5
    .param p0, "cameraCharacteristics"    # Landroid/hardware/camera2/CameraCharacteristics;

    .line 51
    const-class v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 52
    .local v0, "thisClass":Ljava/lang/Object;
    move-object v1, v0

    check-cast v1, Ljava/lang/Class;

    .line 54
    .local v1, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/hardware/camera2/CameraCharacteristics$Key<*>;>;"
    nop

    .line 55
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraCharacteristics;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getAllVendorKeys(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v2

    .line 56
    .local v2, "vendorKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/CameraCharacteristics$Key<*>;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 57
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getVendorId()J

    move-result-wide v3

    return-wide v3

    .line 59
    :cond_0
    const-wide v3, 0x7fffffffffffffffL

    return-wide v3
.end method
