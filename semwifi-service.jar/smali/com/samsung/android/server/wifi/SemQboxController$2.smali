.class Lcom/samsung/android/server/wifi/SemQboxController$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemQboxController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemQboxController;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemQboxController;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemQboxController$2;->this$0:Lcom/samsung/android/server/wifi/SemQboxController;

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
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "Broadcast received: "

    .line 6
    .line 7
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemQboxController;->-$$Nest$smlogd(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const-string v0, "com.samsung.android.wifi.QBOX"

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    const-string p1, "enable"

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    const/4 v1, 0x0

    .line 34
    if-ne p1, v0, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move v0, v1

    .line 38
    :goto_0
    const-string p1, "uid"

    .line 39
    .line 40
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-nez p1, :cond_2

    .line 45
    .line 46
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemQboxController$2;->this$0:Lcom/samsung/android/server/wifi/SemQboxController;

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemQboxController;->removeAll()V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    if-eqz v0, :cond_3

    .line 53
    .line 54
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemQboxController$2;->this$0:Lcom/samsung/android/server/wifi/SemQboxController;

    .line 55
    .line 56
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemQboxController;->addUid(I)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemQboxController$2;->this$0:Lcom/samsung/android/server/wifi/SemQboxController;

    .line 61
    .line 62
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemQboxController;->removeUid(I)V

    .line 63
    .line 64
    .line 65
    return-void
.end method
