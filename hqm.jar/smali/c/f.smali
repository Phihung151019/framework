.class Lc/f;
.super Landroid/os/Handler;
.source "HWParamModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/h;-><init>(Landroid/content/Context;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/h;


# direct methods
.method constructor <init>(Lc/h;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/f;->a:Lc/h;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_2

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p1, v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object p1, p0, Lc/f;->a:Lc/h;

    .line 14
    .line 15
    invoke-static {p1}, Lc/h;->a(Lc/h;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "handleMessage - MSG_TRIGGER_BROADCAST"

    .line 20
    .line 21
    invoke-static {p1, v0}, La/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lc/f;->a:Lc/h;

    .line 25
    .line 26
    invoke-static {p0}, Lc/h;->e(Lc/h;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    iget-object p1, p0, Lc/f;->a:Lc/h;

    .line 31
    .line 32
    invoke-static {p1}, Lc/h;->a(Lc/h;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string v0, "handleMessage - MSG_SET_ALARM"

    .line 37
    .line 38
    invoke-static {p1, v0}, La/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object p0, p0, Lc/f;->a:Lc/h;

    .line 42
    .line 43
    invoke-static {p0}, Lc/h;->c(Lc/h;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_2
    iget-object p1, p0, Lc/f;->a:Lc/h;

    .line 48
    .line 49
    invoke-static {p1}, Lc/h;->a(Lc/h;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const-string v0, "handleMessage - MSG_TRIGGER_ALARM"

    .line 54
    .line 55
    invoke-static {p1, v0}, La/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Lc/f;->a:Lc/h;

    .line 59
    .line 60
    invoke-static {p0}, Lc/h;->d(Lc/h;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method
