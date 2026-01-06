.class final enum Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level$1;
.super Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;
.source "CaLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;-><init>(Ljava/lang/String;ILcom/samsung/android/contextaware/utilbundle/logger/CaLogger-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/samsung/android/contextaware/utilbundle/logger/CaLogger-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level$1;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method consoleLogging(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 66
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->-$$Nest$sfgetisConsoleLogging()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->-$$Nest$sfgetmLevel()I

    move-result v0

    .line 67
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level$1;->ordinal()I

    move-result v2

    if-gt v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 68
    .local v0, "usable":Z
    :goto_0
    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->-$$Nest$smgetCallerInfo(Z)Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "str":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 70
    const-string v2, "CAE"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_1
    return-object v1
.end method

.method fileLogging(Ljava/lang/String;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;

    .line 77
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->-$$Nest$sfgetisFileLogging()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->-$$Nest$sfgetmLevel()I

    move-result v0

    .line 78
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level$1;->ordinal()I

    move-result v2

    if-gt v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 79
    .local v0, "usable":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 80
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->getInstance()Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;

    move-result-object v2

    .line 84
    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->-$$Nest$smgetCallerInfo(Z)Ljava/lang/String;

    move-result-object v1

    .line 83
    const-string v3, "T"

    const-string v4, "CAE"

    invoke-static {v3, v4, v1, p1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->-$$Nest$smgetFilePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 81
    const-string v3, "CAELogger"

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->logging(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_1
    return-void
.end method
