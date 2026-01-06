.class Lcom/samsung/android/hqm/a;
.super Landroid/os/Handler;
.source "HqmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hqm/HqmManagerService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/hqm/HqmManagerService;


# direct methods
.method constructor <init>(Lcom/samsung/android/hqm/HqmManagerService;Landroid/os/Looper;)V
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
    iput-object p1, p0, Lcom/samsung/android/hqm/a;->a:Lcom/samsung/android/hqm/HqmManagerService;

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
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_6

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    if-eq v0, v1, :cond_4

    .line 8
    .line 9
    const/4 v1, 0x4

    .line 10
    if-eq v0, v1, :cond_3

    .line 11
    .line 12
    const/4 v1, 0x5

    .line 13
    if-eq v0, v1, :cond_2

    .line 14
    .line 15
    const/4 v1, 0x6

    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    const/4 v1, 0x7

    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-static {}, Lcom/samsung/android/hqm/HqmManagerService;->k()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "MSG_TYPE:MSG_TYPE_PROCESS_SECURITY"

    .line 27
    .line 28
    invoke-static {v0, v1}, La/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/samsung/android/hqm/a;->a:Lcom/samsung/android/hqm/HqmManagerService;

    .line 32
    .line 33
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p1, Landroid/content/Intent;

    .line 36
    .line 37
    invoke-static {p0, p1}, Lcom/samsung/android/hqm/HqmManagerService;->c(Lcom/samsung/android/hqm/HqmManagerService;Landroid/content/Intent;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    invoke-static {}, Lcom/samsung/android/hqm/HqmManagerService;->k()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v1, "MSG_TYPE:MSG_TYPE_PROCESS_LOG_BY_HQM"

    .line 46
    .line 47
    invoke-static {v0, v1}, La/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object p0, p0, Lcom/samsung/android/hqm/a;->a:Lcom/samsung/android/hqm/HqmManagerService;

    .line 51
    .line 52
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast p1, Lcom/samsung/android/hqm/c;

    .line 55
    .line 56
    invoke-static {p0, p1}, Lcom/samsung/android/hqm/HqmManagerService;->g(Lcom/samsung/android/hqm/HqmManagerService;Lcom/samsung/android/hqm/c;)Z

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_2
    invoke-static {}, Lcom/samsung/android/hqm/HqmManagerService;->k()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const-string v1, "MSG_TYPE:MSG_TYPE_PROCESS_DQA_MSG"

    .line 65
    .line 66
    invoke-static {v0, v1}, La/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object p0, p0, Lcom/samsung/android/hqm/a;->a:Lcom/samsung/android/hqm/HqmManagerService;

    .line 70
    .line 71
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast p1, Landroid/content/Intent;

    .line 74
    .line 75
    invoke-static {p0, p1}, Lcom/samsung/android/hqm/HqmManagerService;->d(Lcom/samsung/android/hqm/HqmManagerService;Landroid/content/Intent;)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_3
    invoke-static {}, Lcom/samsung/android/hqm/HqmManagerService;->k()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    const-string v0, "MSG_TYPE:MSG_TYPE_FORCE_SEND_TIME_OUT"

    .line 84
    .line 85
    invoke-static {p1, v0}, La/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-object p0, p0, Lcom/samsung/android/hqm/a;->a:Lcom/samsung/android/hqm/HqmManagerService;

    .line 89
    .line 90
    invoke-static {p0}, Lcom/samsung/android/hqm/HqmManagerService;->e(Lcom/samsung/android/hqm/HqmManagerService;)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_4
    invoke-static {}, Lcom/samsung/android/hqm/HqmManagerService;->k()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    const-string v0, "MSG_TYPE:SET_TEST_DEVISION"

    .line 99
    .line 100
    invoke-static {p1, v0}, La/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lcom/samsung/android/hqm/a;->a:Lcom/samsung/android/hqm/HqmManagerService;

    .line 104
    .line 105
    invoke-static {p1}, Lcom/samsung/android/hqm/HqmManagerService;->a(Lcom/samsung/android/hqm/HqmManagerService;)La/g;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    if-eqz p1, :cond_5

    .line 110
    .line 111
    iget-object p1, p0, Lcom/samsung/android/hqm/a;->a:Lcom/samsung/android/hqm/HqmManagerService;

    .line 112
    .line 113
    invoke-static {p1}, Lcom/samsung/android/hqm/HqmManagerService;->a(Lcom/samsung/android/hqm/HqmManagerService;)La/g;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    sget-object v0, Lc/k;->O:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {p1, v0}, La/g;->e0(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    :cond_5
    iget-object p0, p0, Lcom/samsung/android/hqm/a;->a:Lcom/samsung/android/hqm/HqmManagerService;

    .line 123
    .line 124
    invoke-static {p0}, Lcom/samsung/android/hqm/HqmManagerService;->f(Lcom/samsung/android/hqm/HqmManagerService;)V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :cond_6
    invoke-static {}, Lcom/samsung/android/hqm/HqmManagerService;->k()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    const-string v0, "MSG_TYPE:REFRESH_TIME_OUT"

    .line 133
    .line 134
    invoke-static {p1, v0}, La/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    iget-object p0, p0, Lcom/samsung/android/hqm/a;->a:Lcom/samsung/android/hqm/HqmManagerService;

    .line 138
    .line 139
    invoke-static {p0}, Lcom/samsung/android/hqm/HqmManagerService;->i(Lcom/samsung/android/hqm/HqmManagerService;)V

    .line 140
    .line 141
    .line 142
    return-void
.end method
