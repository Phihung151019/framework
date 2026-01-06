.class Lh/e;
.super Landroid/os/Handler;
.source "SystemParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh/h;->m(Landroid/content/Context;)Lh/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget p0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    if-eqz p0, :cond_7

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    if-eq p0, v0, :cond_6

    .line 7
    .line 8
    const/4 p1, 0x2

    .line 9
    if-eq p0, p1, :cond_5

    .line 10
    .line 11
    const/4 p1, 0x3

    .line 12
    if-eq p0, p1, :cond_4

    .line 13
    .line 14
    const/4 p1, 0x4

    .line 15
    if-eq p0, p1, :cond_3

    .line 16
    .line 17
    const/4 p1, 0x5

    .line 18
    const/4 v0, 0x0

    .line 19
    if-eq p0, p1, :cond_2

    .line 20
    .line 21
    const/16 p1, 0xa

    .line 22
    .line 23
    if-eq p0, p1, :cond_1

    .line 24
    .line 25
    const/16 p1, 0x5a

    .line 26
    .line 27
    if-eq p0, p1, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    invoke-static {}, Lh/h;->a()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const-string p1, "MSG_TYPE_HCM_TEST"

    .line 35
    .line 36
    invoke-static {p0, p1}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {}, Lh/h;->q()V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    invoke-static {}, Lh/h;->a()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    const-string v1, "MSG_TYPE_DEVICE_PROVISIONED"

    .line 48
    .line 49
    invoke-static {p0, v1}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-static {p1, v0}, Lh/h;->h(II)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_2
    invoke-static {}, Lh/h;->a()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    const-string p1, "LCD OFF STATS "

    .line 61
    .line 62
    invoke-static {p0, p1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-static {}, Lh/h;->b()Lc/d;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {p0, v0}, Lc/d;->p(Z)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_3
    invoke-static {}, Lh/h;->a()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    const-string p1, "LCD ON STATS "

    .line 78
    .line 79
    invoke-static {p0, p1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-static {}, Lh/h;->b()Lc/d;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {p0, v0}, Lc/d;->p(Z)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_4
    invoke-static {}, Lh/h;->a()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    const-string p1, "MSG_TYPE_BATTERY_S_CHECK_REQ"

    .line 95
    .line 96
    invoke-static {p0, p1}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-static {}, Lh/h;->y()V

    .line 100
    .line 101
    .line 102
    invoke-static {}, Lh/h;->d()V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :cond_5
    invoke-static {}, Lh/h;->a()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    const-string p1, "MSG_TYPE_BATTERY_CHECK_REQ"

    .line 111
    .line 112
    invoke-static {p0, p1}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-static {}, Lh/h;->d()V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :cond_6
    invoke-static {}, Lh/h;->a()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    const-string v0, "MSG_TYPE_CHARGING_INFO_REQ"

    .line 124
    .line 125
    invoke-static {p0, v0}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast p0, Ljava/lang/Integer;

    .line 131
    .line 132
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 133
    .line 134
    .line 135
    move-result p0

    .line 136
    invoke-static {p0}, Lh/h;->e(I)V

    .line 137
    .line 138
    .line 139
    return-void

    .line 140
    :cond_7
    invoke-static {}, Lh/h;->a()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    const-string v0, "MSG_TYPE:MSG_TYPE_LOAD_CHECK_REQ"

    .line 145
    .line 146
    invoke-static {p0, v0}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 150
    .line 151
    check-cast p0, Lh/g;

    .line 152
    .line 153
    invoke-static {p0}, Lh/h;->f(Lh/g;)V

    .line 154
    .line 155
    .line 156
    return-void
.end method
