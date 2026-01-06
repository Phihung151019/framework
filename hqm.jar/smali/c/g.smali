.class Lc/g;
.super Landroid/content/BroadcastReceiver;
.source "HWParamModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/h;


# direct methods
.method constructor <init>(Lc/h;)V
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
    iput-object p1, p0, Lc/g;->a:Lc/h;

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
    const-string p2, "com.sec.android.intent.action.HQM_TRIGGER"

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
    iget-object p1, p0, Lc/g;->a:Lc/h;

    .line 14
    .line 15
    invoke-static {p1}, Lc/h;->b(Lc/h;)Landroid/os/Handler;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/4 p2, 0x1

    .line 24
    iput p2, p1, Landroid/os/Message;->what:I

    .line 25
    .line 26
    iget-object p0, p0, Lc/g;->a:Lc/h;

    .line 27
    .line 28
    invoke-static {p0}, Lc/h;->b(Lc/h;)Landroid/os/Handler;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const-wide/16 v0, 0x3e8

    .line 33
    .line 34
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    const-string p2, "android.intent.action.DATE_CHANGED"

    .line 39
    .line 40
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    iget-object p1, p0, Lc/g;->a:Lc/h;

    .line 47
    .line 48
    invoke-static {p1}, Lc/h;->a(Lc/h;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const-string p2, "ACTION_DATE_CHANGED"

    .line 53
    .line 54
    invoke-static {p1, p2}, La/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lc/g;->a:Lc/h;

    .line 58
    .line 59
    invoke-static {p1}, Lc/h;->b(Lc/h;)Landroid/os/Handler;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    const/4 p2, 0x2

    .line 68
    iput p2, p1, Landroid/os/Message;->what:I

    .line 69
    .line 70
    iget-object p0, p0, Lc/g;->a:Lc/h;

    .line 71
    .line 72
    invoke-static {p0}, Lc/h;->b(Lc/h;)Landroid/os/Handler;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    const-wide/32 v0, 0xea60

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 80
    .line 81
    .line 82
    :cond_1
    return-void
.end method
