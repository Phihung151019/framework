.class public Lcom/samsung/android/camerax/advanced/vendor/CaptureIndexInfo;
.super Ljava/lang/Object;
.source "CaptureIndexInfo.java"


# instance fields
.field private final isNeedRawCapture:Z

.field private final isNeedYuvCapture:Z


# direct methods
.method constructor <init>(ZZ)V
    .locals 0
    .param p1, "isNeedRawCapture"    # Z
    .param p2, "isNeedYuvCapture"    # Z

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean p1, p0, Lcom/samsung/android/camerax/advanced/vendor/CaptureIndexInfo;->isNeedRawCapture:Z

    .line 36
    iput-boolean p2, p0, Lcom/samsung/android/camerax/advanced/vendor/CaptureIndexInfo;->isNeedYuvCapture:Z

    .line 37
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 49
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 50
    return v0

    .line 52
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 55
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/samsung/android/camerax/advanced/vendor/CaptureIndexInfo;

    .line 56
    .local v2, "that":Lcom/samsung/android/camerax/advanced/vendor/CaptureIndexInfo;
    iget-boolean v3, p0, Lcom/samsung/android/camerax/advanced/vendor/CaptureIndexInfo;->isNeedRawCapture:Z

    iget-boolean v4, v2, Lcom/samsung/android/camerax/advanced/vendor/CaptureIndexInfo;->isNeedRawCapture:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/samsung/android/camerax/advanced/vendor/CaptureIndexInfo;->isNeedYuvCapture:Z

    iget-boolean v4, v2, Lcom/samsung/android/camerax/advanced/vendor/CaptureIndexInfo;->isNeedYuvCapture:Z

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 53
    .end local v2    # "that":Lcom/samsung/android/camerax/advanced/vendor/CaptureIndexInfo;
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 62
    iget-boolean v0, p0, Lcom/samsung/android/camerax/advanced/vendor/CaptureIndexInfo;->isNeedRawCapture:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/camerax/advanced/vendor/CaptureIndexInfo;->isNeedYuvCapture:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isNeedRawCapture()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lcom/samsung/android/camerax/advanced/vendor/CaptureIndexInfo;->isNeedRawCapture:Z

    return v0
.end method

.method public isNeedYuvCapture()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lcom/samsung/android/camerax/advanced/vendor/CaptureIndexInfo;->isNeedYuvCapture:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CaptureIndexInfo{isNeedRawCapture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/camerax/advanced/vendor/CaptureIndexInfo;->isNeedRawCapture:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isNeedYuvCapture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/camerax/advanced/vendor/CaptureIndexInfo;->isNeedYuvCapture:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
