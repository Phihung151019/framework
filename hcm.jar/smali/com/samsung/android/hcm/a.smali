.class Lcom/samsung/android/hcm/a;
.super Landroid/os/Handler;
.source "HcmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hcm/HcmManagerService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/samsung/android/hcm/HcmManagerService;Landroid/os/Looper;)V
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
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget p0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_7

    .line 5
    .line 6
    const/16 v1, 0x259

    .line 7
    .line 8
    if-eq p0, v1, :cond_6

    .line 9
    .line 10
    const/16 v1, 0x12d

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-eq p0, v1, :cond_5

    .line 14
    .line 15
    const/16 v1, 0x12e

    .line 16
    .line 17
    if-eq p0, v1, :cond_4

    .line 18
    .line 19
    const/16 v1, 0x1f5

    .line 20
    .line 21
    if-eq p0, v1, :cond_3

    .line 22
    .line 23
    const/16 v1, 0x1f6

    .line 24
    .line 25
    if-eq p0, v1, :cond_2

    .line 26
    .line 27
    const/16 v0, 0x321

    .line 28
    .line 29
    if-eq p0, v0, :cond_1

    .line 30
    .line 31
    const/16 p1, 0x322

    .line 32
    .line 33
    if-eq p0, p1, :cond_0

    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    invoke-static {}, Lcom/samsung/android/hcm/HcmManagerService;->d()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const-string p1, "MSG_TYPE:MSG_TYPE_SMC_DB_TEST"

    .line 41
    .line 42
    invoke-static {p0, p1}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {}, Lcom/samsung/android/hcm/HcmManagerService;->e()Lc/d;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p0, v2}, Lc/d;->K(I)V

    .line 50
    .line 51
    .line 52
    invoke-static {}, Lcom/samsung/android/hcm/HcmManagerService;->e()Lc/d;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p0}, Lc/d;->E()V

    .line 57
    .line 58
    .line 59
    invoke-static {}, Lcom/samsung/android/hcm/HcmManagerService;->e()Lc/d;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {p0}, Lc/d;->q()V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_1
    invoke-static {}, Lcom/samsung/android/hcm/HcmManagerService;->d()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    const-string v0, "MSG_TYPE:MSG_TYPE_SMC_TEST"

    .line 72
    .line 73
    invoke-static {p0, v0}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast p0, Ljava/lang/String;

    .line 79
    .line 80
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    invoke-static {}, Lcom/samsung/android/hcm/HcmManagerService;->g()Lg/b;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    div-int/lit8 v0, p0, 0xa

    .line 89
    .line 90
    rem-int/lit8 p0, p0, 0xa

    .line 91
    .line 92
    invoke-virtual {p1, v0, p0}, Lg/b;->f(II)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_2
    invoke-static {}, Lcom/samsung/android/hcm/HcmManagerService;->d()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    const-string v1, "MSG_TYPE_IPC_TEST"

    .line 101
    .line 102
    invoke-static {p0, v1}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast p0, Ljava/lang/String;

    .line 108
    .line 109
    const-string p1, "_"

    .line 110
    .line 111
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-static {}, Lcom/samsung/android/hcm/HcmManagerService;->f()Lb/b;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    aget-object v1, p0, v2

    .line 120
    .line 121
    aget-object p0, p0, v0

    .line 122
    .line 123
    invoke-virtual {p1, v1, p0}, Lb/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :cond_3
    invoke-static {}, Lcom/samsung/android/hcm/HcmManagerService;->d()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    const-string p1, "MSG_TYPE:MSG_TYPE_WIFI_TEST"

    .line 132
    .line 133
    invoke-static {p0, p1}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-static {}, Lcom/samsung/android/hcm/HcmManagerService;->e()Lc/d;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    invoke-virtual {p0}, Lc/d;->R()V

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :cond_4
    invoke-static {}, Lcom/samsung/android/hcm/HcmManagerService;->d()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    const-string v0, "MSG_TYPE:MSG_TYPE_UMBL_REQ"

    .line 149
    .line 150
    invoke-static {p0, v0}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 154
    .line 155
    check-cast p0, Ljava/lang/String;

    .line 156
    .line 157
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    move-result p0

    .line 161
    invoke-static {}, Lcom/samsung/android/hcm/HcmManagerService;->e()Lc/d;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-virtual {p1, v2}, Lc/d;->K(I)V

    .line 166
    .line 167
    .line 168
    invoke-static {}, Lcom/samsung/android/hcm/HcmManagerService;->e()Lc/d;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    div-int/lit8 v0, p0, 0xa

    .line 173
    .line 174
    rem-int/lit8 p0, p0, 0xa

    .line 175
    .line 176
    invoke-virtual {p1, v0, p0}, Lc/d;->G(II)V

    .line 177
    .line 178
    .line 179
    invoke-static {}, Lcom/samsung/android/hcm/HcmManagerService;->e()Lc/d;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    invoke-virtual {p0}, Lc/d;->q()V

    .line 184
    .line 185
    .line 186
    return-void

    .line 187
    :cond_5
    invoke-static {}, Lcom/samsung/android/hcm/HcmManagerService;->d()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p0

    .line 191
    const-string p1, "MSG_TYPE:MSG_TYPE_DB_TEST"

    .line 192
    .line 193
    invoke-static {p0, p1}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-static {}, Lcom/samsung/android/hcm/HcmManagerService;->e()Lc/d;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    invoke-virtual {p0, v2}, Lc/d;->K(I)V

    .line 201
    .line 202
    .line 203
    invoke-static {}, Lcom/samsung/android/hcm/HcmManagerService;->e()Lc/d;

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    invoke-virtual {p0}, Lc/d;->h()V

    .line 208
    .line 209
    .line 210
    invoke-static {}, Lcom/samsung/android/hcm/HcmManagerService;->e()Lc/d;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    invoke-virtual {p0}, Lc/d;->q()V

    .line 215
    .line 216
    .line 217
    return-void

    .line 218
    :cond_6
    invoke-static {}, Lcom/samsung/android/hcm/HcmManagerService;->d()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p0

    .line 222
    const-string v0, "MSG_TYPE:MSG_TYPE_MANUAL_PS_MODE_TEST"

    .line 223
    .line 224
    invoke-static {p0, v0}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 228
    .line 229
    check-cast p0, Ljava/lang/String;

    .line 230
    .line 231
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 232
    .line 233
    .line 234
    move-result p0

    .line 235
    invoke-static {}, Lcom/samsung/android/hcm/HcmManagerService;->e()Lc/d;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    div-int/lit8 v0, p0, 0x64

    .line 240
    .line 241
    rem-int/lit8 p0, p0, 0x64

    .line 242
    .line 243
    invoke-virtual {p1, v0, p0}, Lc/d;->r(II)V

    .line 244
    .line 245
    .line 246
    return-void

    .line 247
    :cond_7
    invoke-static {}, Lcom/samsung/android/hcm/HcmManagerService;->d()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p0

    .line 251
    const-string p1, "MSG_TYPE_DAY_OF_CHANGE_REQ"

    .line 252
    .line 253
    invoke-static {p0, p1}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    invoke-static {}, Lcom/samsung/android/hcm/HcmManagerService;->e()Lc/d;

    .line 257
    .line 258
    .line 259
    move-result-object p0

    .line 260
    invoke-virtual {p0}, Lc/d;->o()V

    .line 261
    .line 262
    .line 263
    invoke-static {}, Lcom/samsung/android/hcm/HcmManagerService;->e()Lc/d;

    .line 264
    .line 265
    .line 266
    move-result-object p0

    .line 267
    invoke-virtual {p0, v0}, Lc/d;->O(Z)V

    .line 268
    .line 269
    .line 270
    return-void
.end method
