.class public Lcom/samsung/android/sdk/camera/impl/internal/CustomInterfaceHelper;
.super Ljava/lang/Object;
.source "CustomInterfaceHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const-class v0, Lcom/samsung/android/sdk/camera/impl/internal/CustomInterfaceHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/camera/impl/internal/CustomInterfaceHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static setSamsungParameter(Landroid/hardware/camera2/CameraDevice;Ljava/lang/String;)V
    .locals 0
    .param p0, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;
    .param p1, "parameter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 19
    if-eqz p0, :cond_0

    .line 20
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraDevice;->setParameters(Ljava/lang/String;)V

    .line 22
    :cond_0
    return-void
.end method
