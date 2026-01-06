.class public Lcom/samsung/android/contextaware/manager/ContextBean;
.super Ljava/lang/Object;
.source "ContextBean.java"


# instance fields
.field private mContextBundle:Landroid/os/Bundle;

.field private mContextBundleForDisplay:Landroid/os/Bundle;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextBean;->clearContextBean()V

    .line 37
    return-void
.end method

.method private putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 404
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundleForDisplay:Landroid/os/Bundle;

    monitor-enter v0

    .line 408
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundleForDisplay:Landroid/os/Bundle;

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    monitor-exit v0

    .line 410
    return-void

    .line 409
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 405
    :cond_1
    :goto_0
    return-void
.end method

.method private putContextForDisplay(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/String;

    .line 315
    if-eqz p2, :cond_1

    array-length v0, p2

    if-gtz v0, :cond_0

    goto :goto_0

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundleForDisplay:Landroid/os/Bundle;

    monitor-enter v0

    .line 319
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundleForDisplay:Landroid/os/Bundle;

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 320
    monitor-exit v0

    .line 321
    return-void

    .line 320
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 316
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected final clearContextBean()V
    .locals 1

    .line 302
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    .line 303
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundleForDisplay:Landroid/os/Bundle;

    .line 304
    return-void
.end method

.method protected final getContextBundle()Landroid/os/Bundle;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getContextBundleForDisplay()Landroid/os/Bundle;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundleForDisplay:Landroid/os/Bundle;

    return-object v0
.end method

.method public final putContext(Ljava/lang/String;D)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D

    .line 112
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    monitor-enter v0

    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 114
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void

    .line 114
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final putContext(Ljava/lang/String;F)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 97
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    monitor-enter v0

    .line 98
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 99
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void

    .line 99
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final putContext(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 82
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    monitor-enter v0

    .line 83
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 84
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void

    .line 84
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final putContext(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 127
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    monitor-enter v0

    .line 128
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 129
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void

    .line 129
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final putContext(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 172
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    monitor-enter v0

    .line 173
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 174
    monitor-exit v0

    .line 175
    return-void

    .line 174
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final putContext(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 157
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    monitor-enter v0

    .line 158
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-void

    .line 159
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final putContext(Ljava/lang/String;S)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # S

    .line 142
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    monitor-enter v0

    .line 143
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 144
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    invoke-static {p2}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void

    .line 144
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final putContext(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 66
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    monitor-enter v0

    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 68
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void

    .line 68
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final putContext(Ljava/lang/String;[D)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [D

    .line 258
    if-nez p2, :cond_0

    .line 259
    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    monitor-enter v0

    .line 263
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 264
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    array-length v0, p2

    new-array v0, v0, [Ljava/lang/String;

    .line 267
    .local v0, "strArr":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 268
    aget-wide v2, p2, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 267
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 270
    .end local v1    # "i":I
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[Ljava/lang/String;)V

    .line 271
    return-void

    .line 264
    .end local v0    # "strArr":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final putContext(Ljava/lang/String;[F)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [F

    .line 235
    if-nez p2, :cond_0

    .line 236
    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    monitor-enter v0

    .line 239
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 240
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    array-length v0, p2

    new-array v0, v0, [Ljava/lang/String;

    .line 243
    .local v0, "strArr":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 244
    aget v2, p2, v1

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 243
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 246
    .end local v1    # "i":I
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[Ljava/lang/String;)V

    .line 247
    return-void

    .line 240
    .end local v0    # "strArr":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final putContext(Ljava/lang/String;[I)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [I

    .line 211
    if-nez p2, :cond_0

    .line 212
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    monitor-enter v0

    .line 216
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 217
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    array-length v0, p2

    new-array v0, v0, [Ljava/lang/String;

    .line 220
    .local v0, "strArr":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 221
    aget v2, p2, v1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 220
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 223
    .end local v1    # "i":I
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[Ljava/lang/String;)V

    .line 224
    return-void

    .line 217
    .end local v0    # "strArr":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final putContext(Ljava/lang/String;[J)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [J

    .line 282
    if-nez p2, :cond_0

    .line 283
    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    monitor-enter v0

    .line 287
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 289
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    array-length v0, p2

    new-array v0, v0, [Ljava/lang/String;

    .line 292
    .local v0, "strArr":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 293
    aget-wide v2, p2, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 292
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 295
    .end local v1    # "i":I
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[Ljava/lang/String;)V

    .line 296
    return-void

    .line 289
    .end local v0    # "strArr":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final putContext(Ljava/lang/String;[Z)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Z

    .line 186
    if-eqz p2, :cond_2

    array-length v0, p2

    if-gtz v0, :cond_0

    goto :goto_1

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    monitor-enter v0

    .line 191
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 192
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    array-length v0, p2

    new-array v0, v0, [Ljava/lang/String;

    .line 195
    .local v0, "strArr":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 196
    aget-boolean v2, p2, v1

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 195
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 198
    .end local v1    # "i":I
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[Ljava/lang/String;)V

    .line 200
    return-void

    .line 192
    .end local v0    # "strArr":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 187
    :cond_2
    :goto_1
    return-void
.end method

.method public final putContextForDisplay(Ljava/lang/String;D)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D

    .line 368
    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    return-void
.end method

.method public final putContextForDisplay(Ljava/lang/String;F)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 356
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    return-void
.end method

.method public final putContextForDisplay(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 344
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    return-void
.end method

.method public final putContextForDisplay(Ljava/lang/String;J)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 380
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    return-void
.end method

.method public final putContextForDisplay(Ljava/lang/String;S)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # S

    .line 392
    invoke-static {p2}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    return-void
.end method

.method public final putContextForDisplay(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 332
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    return-void
.end method

.method public final putContextForDisplay(Ljava/lang/String;[D)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [D

    .line 480
    if-eqz p2, :cond_2

    array-length v0, p2

    if-gtz v0, :cond_0

    goto :goto_1

    .line 483
    :cond_0
    array-length v0, p2

    new-array v0, v0, [Ljava/lang/String;

    .line 484
    .local v0, "strArr":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 485
    aget-wide v2, p2, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 484
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 487
    .end local v1    # "i":I
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[Ljava/lang/String;)V

    .line 488
    return-void

    .line 481
    .end local v0    # "strArr":[Ljava/lang/String;
    :cond_2
    :goto_1
    return-void
.end method

.method public final putContextForDisplay(Ljava/lang/String;[F)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [F

    .line 460
    if-eqz p2, :cond_2

    array-length v0, p2

    if-gtz v0, :cond_0

    goto :goto_1

    .line 463
    :cond_0
    array-length v0, p2

    new-array v0, v0, [Ljava/lang/String;

    .line 464
    .local v0, "strArr":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 465
    aget v2, p2, v1

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 464
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 467
    .end local v1    # "i":I
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[Ljava/lang/String;)V

    .line 468
    return-void

    .line 461
    .end local v0    # "strArr":[Ljava/lang/String;
    :cond_2
    :goto_1
    return-void
.end method

.method public final putContextForDisplay(Ljava/lang/String;[I)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [I

    .line 441
    if-eqz p2, :cond_2

    array-length v0, p2

    if-gtz v0, :cond_0

    goto :goto_1

    .line 444
    :cond_0
    array-length v0, p2

    new-array v0, v0, [Ljava/lang/String;

    .line 445
    .local v0, "strArr":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 446
    aget v2, p2, v1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 445
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 448
    .end local v1    # "i":I
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[Ljava/lang/String;)V

    .line 449
    return-void

    .line 442
    .end local v0    # "strArr":[Ljava/lang/String;
    :cond_2
    :goto_1
    return-void
.end method

.method public final putContextForDisplay(Ljava/lang/String;[J)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [J

    .line 499
    if-eqz p2, :cond_2

    array-length v0, p2

    if-gtz v0, :cond_0

    goto :goto_1

    .line 502
    :cond_0
    array-length v0, p2

    new-array v0, v0, [Ljava/lang/String;

    .line 503
    .local v0, "strArr":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 504
    aget-wide v2, p2, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 503
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 506
    .end local v1    # "i":I
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[Ljava/lang/String;)V

    .line 507
    return-void

    .line 500
    .end local v0    # "strArr":[Ljava/lang/String;
    :cond_2
    :goto_1
    return-void
.end method

.method public final putContextForDisplay(Ljava/lang/String;[Z)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Z

    .line 422
    if-eqz p2, :cond_2

    array-length v0, p2

    if-gtz v0, :cond_0

    goto :goto_1

    .line 425
    :cond_0
    array-length v0, p2

    new-array v0, v0, [Ljava/lang/String;

    .line 426
    .local v0, "strArr":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 427
    aget-boolean v2, p2, v1

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 426
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 429
    .end local v1    # "i":I
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[Ljava/lang/String;)V

    .line 430
    return-void

    .line 423
    .end local v0    # "strArr":[Ljava/lang/String;
    :cond_2
    :goto_1
    return-void
.end method
