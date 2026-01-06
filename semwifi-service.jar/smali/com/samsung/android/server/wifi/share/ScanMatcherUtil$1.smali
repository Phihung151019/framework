.class Lcom/samsung/android/server/wifi/share/ScanMatcherUtil$1;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/util/ScanPool$ScanResultUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil$1;->this$0:Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onScanResultUpdated(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil$1;->this$0:Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->-$$Nest$fgetmListener(Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;)Lcom/samsung/android/server/wifi/share/ScanMatcherUtil$OnBssidListChangedListener;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil$1;->this$0:Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->-$$Nest$fgetmScanPool(Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;)Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil$1;->this$0:Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->-$$Nest$fgetmWatchingConfigKey(Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/util/ScanPool;->getBssidList(Ljava/lang/String;)Ljava/util/Set;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil$1;->this$0:Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->-$$Nest$fgetmLastBssidList(Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;)Ljava/util/Set;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {p1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 32
    .line 33
    .line 34
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_0

    .line 39
    .line 40
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil$1;->this$0:Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;

    .line 41
    .line 42
    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->-$$Nest$fgetmListener(Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;)Lcom/samsung/android/server/wifi/share/ScanMatcherUtil$OnBssidListChangedListener;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-interface {p1}, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil$OnBssidListChangedListener;->onBssidListChanged()V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil$1;->this$0:Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;

    .line 50
    .line 51
    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->-$$Nest$fgetmScanPool(Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;)Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil$1;->this$0:Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;

    .line 56
    .line 57
    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->-$$Nest$fgetmWatchingConfigKey(Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/util/ScanPool;->getBssidList(Ljava/lang/String;)Ljava/util/Set;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-static {p1, p0}, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->-$$Nest$fputmLastBssidList(Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;Ljava/util/Set;)V

    .line 66
    .line 67
    .line 68
    :cond_0
    return-void
.end method
