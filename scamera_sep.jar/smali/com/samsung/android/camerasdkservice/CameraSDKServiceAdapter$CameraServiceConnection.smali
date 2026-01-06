.class Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter$CameraServiceConnection;
.super Ljava/lang/Object;
.source "CameraSDKServiceAdapter.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CameraServiceConnection"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraServiceConnection"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 743
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter$CameraServiceConnection;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 761
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBindingDied "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraServiceConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    invoke-static {}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->-$$Nest$sfgetsInstance()Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->-$$Nest$mhandleServiceDeath(Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;)V

    .line 763
    invoke-static {}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->-$$Nest$sfgetsInstance()Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->-$$Nest$mhandleServiceDisconnected(Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;)V

    .line 764
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "iBinder"    # Landroid/os/IBinder;

    .line 748
    const-string v0, "CameraServiceConnection"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    invoke-static {}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->-$$Nest$sfgetsInstance()Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->-$$Nest$mhandleServiceConnected(Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;Landroid/os/IBinder;)V

    .line 750
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 754
    const-string v0, "CameraServiceConnection"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    invoke-static {}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->-$$Nest$sfgetsInstance()Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->-$$Nest$mhandleServiceDeath(Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;)V

    .line 756
    invoke-static {}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->-$$Nest$sfgetsInstance()Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->-$$Nest$mhandleServiceDisconnected(Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;)V

    .line 757
    return-void
.end method
