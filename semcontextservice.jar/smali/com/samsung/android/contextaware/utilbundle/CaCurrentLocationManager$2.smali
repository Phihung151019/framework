.class Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager$2;
.super Ljava/lang/Object;
.source "CaCurrentLocationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager;->enable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager;

.field final synthetic val$provider:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 199
    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager;

    iput-object p2, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager$2;->val$provider:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 202
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager;

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager;->-$$Nest$fgetmGpsManager(Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager;)Landroid/location/LocationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager$2;->val$provider:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager;

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager;->-$$Nest$fgetmLocationListener(Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager;)Landroid/location/LocationListener;

    move-result-object v6

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager;

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager;->-$$Nest$fgetmLooper(Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager;)Landroid/os/Looper;

    move-result-object v7

    const-wide/16 v3, 0x3e8

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 204
    return-void
.end method
