.class Lb/d;
.super Landroid/os/Handler;
.source "LogAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/i;-><init>(Landroid/content/Context;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/i;


# direct methods
.method constructor <init>(Lb/i;Landroid/os/Looper;)V
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
    iput-object p1, p0, Lb/d;->a:Lb/i;

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
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    invoke-static {}, Lb/i;->h()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v0, "MSG_TYPE:MSG_APP_CRASH_CHECK_REQ"

    .line 12
    .line 13
    invoke-static {p1, v0}, La/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lb/d;->a:Lb/i;

    .line 17
    .line 18
    invoke-static {p0}, Lb/i;->d(Lb/i;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_1
    invoke-static {}, Lb/i;->h()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v0, "MSG_TYPE:MSG_MEMINFO_CHECK_REQ"

    .line 27
    .line 28
    invoke-static {p1, v0}, La/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lb/d;->a:Lb/i;

    .line 32
    .line 33
    invoke-static {p0}, Lb/i;->e(Lb/i;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_2
    invoke-static {}, Lb/i;->h()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const-string v0, "MSG_TYPE:MSG_TYPE_SEND_SYS_INFO"

    .line 42
    .line 43
    invoke-static {p1, v0}, La/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object p0, p0, Lb/d;->a:Lb/i;

    .line 47
    .line 48
    invoke-static {p0}, Lb/i;->g(Lb/i;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :pswitch_3
    iget-object p0, p0, Lb/d;->a:Lb/i;

    .line 53
    .line 54
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p1, Lb/g;

    .line 57
    .line 58
    invoke-static {p0, p1}, Lb/i;->b(Lb/i;Lb/g;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :pswitch_4
    invoke-static {}, Lb/i;->h()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const-string v1, "handleMessage - MSG_CHECK_RESULT"

    .line 67
    .line 68
    invoke-static {v0, v1}, La/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object p0, p0, Lb/d;->a:Lb/i;

    .line 72
    .line 73
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast p1, Lb/f;

    .line 76
    .line 77
    invoke-static {p0, p1}, Lb/i;->f(Lb/i;Lb/f;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :pswitch_5
    invoke-static {}, Lb/i;->h()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const-string v1, "handleMessage - MSG_ANLAYZE_REQ"

    .line 86
    .line 87
    invoke-static {v0, v1}, La/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget-object p0, p0, Lb/d;->a:Lb/i;

    .line 91
    .line 92
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast p1, Lb/f;

    .line 95
    .line 96
    invoke-static {p0, p1}, Lb/i;->c(Lb/i;Lb/f;)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    nop

    .line 101
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
