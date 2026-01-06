.class public Lcom/samsung/android/server/wifi/backoff/BackOffMode;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final BODY_SAR_BACKOFF:I = 0x2

.field public static final HEAD_SAR_BACKOFF:I = 0x1

.field public static final MM_WAVE_BACKOFF:I = 0x8

.field public static final NO_BACKOFF:I = 0x0

.field public static final SUB6_BACKOFF:I = 0x4


# instance fields
.field private current:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/BackOffMode;->reset()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method static getTypeString(I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    and-int/lit8 v1, p0, 0x1

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const-string v1, "[HEAD]"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    :cond_0
    and-int/lit8 v1, p0, 0x2

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    const-string v1, "[BODY]"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    :cond_1
    and-int/lit8 v1, p0, 0x4

    .line 25
    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    const-string v1, "[SUB6]"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    :cond_2
    and-int/lit8 p0, p0, 0x8

    .line 34
    .line 35
    if-eqz p0, :cond_3

    .line 36
    .line 37
    const-string p0, "[MWAVE]"

    .line 38
    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method


# virtual methods
.method public add(I)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffMode;->current:I

    .line 2
    .line 3
    or-int/2addr p1, v0

    .line 4
    iput p1, p0, Lcom/samsung/android/server/wifi/backoff/BackOffMode;->current:I

    .line 5
    .line 6
    return p1
.end method

.method public clone()Lcom/samsung/android/server/wifi/backoff/BackOffMode;
    .locals 1

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/backoff/BackOffMode;

    .line 3
    iget p0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffMode;->current:I

    iput p0, v0, Lcom/samsung/android/server/wifi/backoff/BackOffMode;->current:I
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 4
    :catch_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/BackOffMode;->clone()Lcom/samsung/android/server/wifi/backoff/BackOffMode;

    move-result-object p0

    return-object p0
.end method

.method public contains(I)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffMode;->current:I

    .line 2
    .line 3
    and-int/2addr p0, p1

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method public hasAny()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffMode;->current:I

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public remove(I)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffMode;->current:I

    .line 2
    .line 3
    not-int p1, p1

    .line 4
    and-int/2addr p1, v0

    .line 5
    iput p1, p0, Lcom/samsung/android/server/wifi/backoff/BackOffMode;->current:I

    .line 6
    .line 7
    return p1
.end method

.method public reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffMode;->current:I

    .line 3
    .line 4
    return-void
.end method

.method public toInt()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffMode;->current:I

    .line 2
    .line 3
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/BackOffMode;->hasAny()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget p0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffMode;->current:I

    .line 8
    .line 9
    invoke-static {p0}, Lcom/samsung/android/server/wifi/backoff/BackOffMode;->getTypeString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    const-string p0, "[NONE]"

    .line 15
    .line 16
    return-object p0
.end method
