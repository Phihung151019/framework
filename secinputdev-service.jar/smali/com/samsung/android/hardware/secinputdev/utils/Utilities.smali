.class public Lcom/samsung/android/hardware/secinputdev/utils/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SemInput:Utlities"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDevidKeyboard(I)Z
    .locals 1
    .param p0, "devid"    # I

    .line 48
    const/16 v0, 0x1f

    if-ne p0, v0, :cond_0

    .line 49
    const/4 v0, 0x1

    return v0

    .line 50
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isDevidSpen(I)Z
    .locals 1
    .param p0, "devid"    # I

    .line 42
    const/16 v0, 0xb

    if-ne p0, v0, :cond_0

    .line 43
    const/4 v0, 0x1

    return v0

    .line 44
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isDevidTsp(I)Z
    .locals 2
    .param p0, "devid"    # I

    .line 36
    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/4 v1, 0x3

    if-ge p0, v1, :cond_0

    .line 37
    return v0

    .line 38
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    return-void
.end method

.method public static loggingThrowable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return-void
.end method
