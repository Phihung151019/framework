.class Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$4;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/SemWifiEnhancedFeatureController$SemWifiFeatureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public featureUpdated([I)V
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    aget p1, p1, v0

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne p1, v1, :cond_0

    .line 7
    .line 8
    move p1, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move p1, v0

    .line 11
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 12
    .line 13
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmMlControlEnabled(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eq p1, v2, :cond_1

    .line 22
    .line 23
    move v0, v1

    .line 24
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 25
    .line 26
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmMlControlEnabled(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 31
    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 36
    .line 37
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->renewConnection(I)V

    .line 38
    .line 39
    .line 40
    :cond_2
    return-void
.end method
