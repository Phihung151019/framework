.class Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger$SemSupportedFeatureReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SemSupportedFeatureReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger$SemSupportedFeatureReceiver;->this$0:Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string p2, "com.samsung.intent.action.LAZY_BOOT_COMPLETE"

    .line 6
    .line 7
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const-string v0, "SemSupportedFeatureReceiver.onReceive: action="

    .line 18
    .line 19
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger$SemSupportedFeatureReceiver;->this$0:Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;

    .line 27
    .line 28
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->-$$Nest$mparseSupportedFeature(Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method
