.class Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$SubsystemRestartListenerProxy;
.super Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ListenerProxy;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubsystemRestartListenerProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ListenerProxy<",
        "Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$SubsystemRestartListener;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$SubsystemRestartListener;Landroid/os/Handler;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1
    const-string v0, "SubsystemRestartListenerProxy"

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ListenerProxy;-><init>(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;Ljava/lang/Object;Landroid/os/Handler;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected action()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ListenerProxy;->mListener:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$SubsystemRestartListener;

    .line 4
    .line 5
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$SubsystemRestartListener;->onSubsystemRestart()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
