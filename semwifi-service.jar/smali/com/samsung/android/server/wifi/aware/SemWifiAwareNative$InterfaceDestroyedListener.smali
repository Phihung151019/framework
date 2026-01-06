.class Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative$InterfaceDestroyedListener;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InterfaceDestroyedListener"
.end annotation


# instance fields
.field private mExternalListener:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListener;

.field final synthetic this$0:Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 3
    iput-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative$InterfaceDestroyedListener;->this$0:Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative;Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative$InterfaceDestroyedListener;->this$0:Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative$InterfaceDestroyedListener;->mExternalListener:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListener;

    return-void
.end method


# virtual methods
.method public onDestroyed(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Interface was destroyed: mWifiNanIface="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative$InterfaceDestroyedListener;->this$0:Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative;->-$$Nest$fgetmWifiNanIface(Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative;)Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "SemWifiAwareNative"

    .line 22
    .line 23
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative$InterfaceDestroyedListener;->mExternalListener:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListener;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-interface {v0, p1}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListener;->onDestroyed(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative$InterfaceDestroyedListener;->this$0:Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative;

    .line 34
    .line 35
    invoke-static {p0}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative;->-$$Nest$fputmWifiNanIface(Lcom/samsung/android/server/wifi/aware/SemWifiAwareNative;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
