.class Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$3;
.super Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)V
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
    invoke-direct {p0}, Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onAdvertiseStarted(I)V
    .locals 0

    .line 1
    const-string p0, "WifiProfileShare.McfSub"

    .line 2
    .line 3
    const-string p1, "-ME--- mQosMcfAdvertiseCallback, onAdvertiseStarted"

    .line 4
    .line 5
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onAdvertiseStopped(I)V
    .locals 0

    .line 1
    const-string p0, "WifiProfileShare.McfSub"

    .line 2
    .line 3
    const-string p1, "-ME--- onQosAdvertiseStopped "

    .line 4
    .line 5
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method
