.class public abstract enum Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;
.super Ljava/lang/Enum;
.source "CaLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/PermittedSubclasses;
    value = {
        Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level$1;,
        Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level$2;,
        Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level$3;,
        Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level$4;,
        Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level$5;,
        Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level$6;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

.field public static final enum DEBUG:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

.field public static final enum ERROR:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

.field public static final enum EXCEPTION:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

.field public static final enum INFO:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

.field public static final enum TRACE:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

.field public static final enum WARN:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;
    .locals 6

    .line 60
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->TRACE:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    sget-object v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->DEBUG:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    sget-object v2, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->INFO:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    sget-object v3, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->WARN:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    sget-object v4, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->ERROR:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    sget-object v5, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->EXCEPTION:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    filled-new-array/range {v0 .. v5}, [Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smgetCallerInfo(Z)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->getCallerInfo(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 63
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level$1;

    const-string v1, "TRACE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level$1;-><init>(Ljava/lang/String;ILcom/samsung/android/contextaware/utilbundle/logger/CaLogger-IA;)V

    sput-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->TRACE:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    .line 90
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level$2;

    const-string v1, "DEBUG"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level$2;-><init>(Ljava/lang/String;ILcom/samsung/android/contextaware/utilbundle/logger/CaLogger-IA;)V

    sput-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->DEBUG:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    .line 114
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level$3;

    const-string v1, "INFO"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level$3;-><init>(Ljava/lang/String;ILcom/samsung/android/contextaware/utilbundle/logger/CaLogger-IA;)V

    sput-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->INFO:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    .line 138
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level$4;

    const-string v1, "WARN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level$4;-><init>(Ljava/lang/String;ILcom/samsung/android/contextaware/utilbundle/logger/CaLogger-IA;)V

    sput-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->WARN:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    .line 162
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level$5;

    const-string v1, "ERROR"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level$5;-><init>(Ljava/lang/String;ILcom/samsung/android/contextaware/utilbundle/logger/CaLogger-IA;)V

    sput-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->ERROR:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    .line 186
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level$6;

    const-string v1, "EXCEPTION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level$6;-><init>(Ljava/lang/String;ILcom/samsung/android/contextaware/utilbundle/logger/CaLogger-IA;)V

    sput-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->EXCEPTION:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    .line 60
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->$values()[Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->$VALUES:[Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/samsung/android/contextaware/utilbundle/logger/CaLogger-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static getCallerInfo(Z)Ljava/lang/String;
    .locals 5
    .param p0, "isHyphen"    # Z

    .line 216
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->-$$Nest$sfgetisCaller()Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    const-string v0, ""

    return-object v0

    .line 220
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 223
    .local v0, "stackList":[Ljava/lang/StackTraceElement;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 225
    .local v1, "callerInfo":Ljava/lang/StringBuffer;
    array-length v2, v0

    const/4 v3, 0x4

    if-lt v2, v3, :cond_1

    .line 226
    const/4 v2, 0x6

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    .line 227
    .local v2, "str":Ljava/lang/String;
    nop

    .line 228
    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 227
    const/16 v4, 0x2e

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 231
    .end local v2    # "str":Ljava/lang/String;
    :cond_1
    if-eqz p0, :cond_2

    .line 232
    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 235
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 60
    const-class v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;
    .locals 1

    .line 60
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->$VALUES:[Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v0}, [Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    return-object v0
.end method


# virtual methods
.method abstract consoleLogging(Ljava/lang/String;)Ljava/lang/String;
.end method

.method abstract fileLogging(Ljava/lang/String;)V
.end method
