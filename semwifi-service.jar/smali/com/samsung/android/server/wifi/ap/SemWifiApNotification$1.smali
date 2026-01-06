.class Lcom/samsung/android/server/wifi/ap/SemWifiApNotification$1;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/SemWifiApNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApNotification;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApNotification;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApNotification$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApNotification;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onWifiApStaInfoStateChanged(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string p1, "onreceive WIFI_AP_STA_STATE_CHANGED_ACTION:count : "

    .line 2
    .line 3
    const-string p2, "SemWifiApNotification"

    .line 4
    .line 5
    invoke-static {p1, p3, p2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApNotification$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApNotification;

    .line 9
    .line 10
    invoke-virtual {p0, p3}, Lcom/samsung/android/server/wifi/ap/SemWifiApNotification;->updateApNotification(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
