.class public final synthetic Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/util/WifiNl80211Util;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/util/WifiNl80211Util;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticLambda6;->f$0:Lcom/samsung/android/server/wifi/util/WifiNl80211Util;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticLambda6;->f$0:Lcom/samsung/android/server/wifi/util/WifiNl80211Util;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/util/WifiNl80211Util;->getRssi()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method
