.class Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$SemWifiApConfiguration$4;
.super Landroid/util/SparseIntArray;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$SemWifiApConfiguration;->getWifiApConfiguration(Landroid/content/Context;)Landroid/net/wifi/SoftApConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/util/SparseIntArray;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$SemWifiApConfiguration;->-$$Nest$sfgetgchannel()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
