.class Lcom/samsung/android/hcm/b;
.super Landroid/content/BroadcastReceiver;
.source "HcmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hcm/HcmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/hcm/HcmManagerService;


# direct methods
.method constructor <init>(Lcom/samsung/android/hcm/HcmManagerService;)V
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
    iput-object p1, p0, Lcom/samsung/android/hcm/b;->a:Lcom/samsung/android/hcm/HcmManagerService;

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
    const-string p2, "android.intent.action.BOOT_COMPLETED"

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
    invoke-static {}, Lcom/samsung/android/hcm/HcmManagerService;->d()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string p2, "receive the ACTION_BOOT_COMPLETED Intent"

    .line 18
    .line 19
    invoke-static {p1, p2}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/samsung/android/hcm/b;->a:Lcom/samsung/android/hcm/HcmManagerService;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/samsung/android/hcm/HcmManagerService;->b(Lcom/samsung/android/hcm/HcmManagerService;)La/d;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string p2, "MAIN"

    .line 29
    .line 30
    const-string v0, "BOOT_COMPLETED"

    .line 31
    .line 32
    invoke-virtual {p1, p2, v0}, La/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lcom/samsung/android/hcm/b;->a:Lcom/samsung/android/hcm/HcmManagerService;

    .line 36
    .line 37
    invoke-static {p0}, Lcom/samsung/android/hcm/HcmManagerService;->c(Lcom/samsung/android/hcm/HcmManagerService;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    const-string p2, "android.intent.action.DATE_CHANGED"

    .line 42
    .line 43
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-eqz p2, :cond_1

    .line 48
    .line 49
    iget-object p1, p0, Lcom/samsung/android/hcm/b;->a:Lcom/samsung/android/hcm/HcmManagerService;

    .line 50
    .line 51
    invoke-static {p1}, Lcom/samsung/android/hcm/HcmManagerService;->a(Lcom/samsung/android/hcm/HcmManagerService;)Landroid/os/Handler;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const/4 p2, 0x1

    .line 60
    iput p2, p1, Landroid/os/Message;->what:I

    .line 61
    .line 62
    iget-object p0, p0, Lcom/samsung/android/hcm/b;->a:Lcom/samsung/android/hcm/HcmManagerService;

    .line 63
    .line 64
    invoke-static {p0}, Lcom/samsung/android/hcm/HcmManagerService;->a(Lcom/samsung/android/hcm/HcmManagerService;)Landroid/os/Handler;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_1
    const-string p0, "android.intent.action.ACTION_SHUTDOWN"

    .line 73
    .line 74
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    if-eqz p0, :cond_2

    .line 79
    .line 80
    invoke-static {}, Lcom/samsung/android/hcm/HcmManagerService;->h()Lh/h;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-virtual {p0}, Lh/h;->u()V

    .line 85
    .line 86
    .line 87
    :cond_2
    return-void
.end method
