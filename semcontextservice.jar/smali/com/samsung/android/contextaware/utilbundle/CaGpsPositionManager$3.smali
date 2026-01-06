.class Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager$3;
.super Ljava/lang/Object;
.source "CaGpsPositionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->enable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 218
    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager$3;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 221
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager$3;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->-$$Nest$fgetmGpsManager(Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;)Landroid/location/LocationManager;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager$3;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->-$$Nest$fgetmLocationListener(Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;)Landroid/location/LocationListener;

    move-result-object v6

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager$3;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->-$$Nest$fgetmLooper(Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;)Landroid/os/Looper;

    move-result-object v7

    const-string v2, "gps"

    const-wide/16 v3, 0x3e8

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 223
    return-void
.end method
