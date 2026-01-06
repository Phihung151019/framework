.class public Lcom/samsung/android/server/uwb/factory/UwbFactoryCommand;
.super Ljava/lang/Object;
.source "UwbFactoryCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/uwb/factory/UwbFactoryCommand$Command;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UwbFactoryCommand"

.field public static final sCommandMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/uwb/factory/UwbFactoryCommand$Command;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$smisValidTxCalFilename(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryCommand;->isValidTxCalFilename(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/server/uwb/factory/UwbFactoryCommand;->sCommandMap:Ljava/util/Map;

    .line 18
    invoke-static {}, Lcom/samsung/android/server/uwb/factory/UwbFactoryCommand$Command;->values()[Lcom/samsung/android/server/uwb/factory/UwbFactoryCommand$Command;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 19
    .local v3, "item":Lcom/samsung/android/server/uwb/factory/UwbFactoryCommand$Command;
    sget-object v4, Lcom/samsung/android/server/uwb/factory/UwbFactoryCommand;->sCommandMap:Ljava/util/Map;

    invoke-static {v3}, Lcom/samsung/android/server/uwb/factory/UwbFactoryCommand$Command;->-$$Nest$fgetmCommand(Lcom/samsung/android/server/uwb/factory/UwbFactoryCommand$Command;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .end local v3    # "item":Lcom/samsung/android/server/uwb/factory/UwbFactoryCommand$Command;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 21
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static find(Ljava/lang/String;[ILjava/lang/String;)Lcom/samsung/android/server/uwb/factory/UwbFactoryCommand$Command;
    .locals 5
    .param p0, "atCommand"    # Ljava/lang/String;
    .param p1, "iData"    # [I
    .param p2, "sData"    # Ljava/lang/String;

    .line 446
    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 447
    sget-object v0, Lcom/samsung/android/server/uwb/factory/UwbFactoryCommand;->sCommandMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/uwb/factory/UwbFactoryCommand$Command;

    .line 448
    .local v0, "command":Lcom/samsung/android/server/uwb/factory/UwbFactoryCommand$Command;
    return-object v0

    .line 449
    .end local v0    # "command":Lcom/samsung/android/server/uwb/factory/UwbFactoryCommand$Command;
    :cond_0
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    if-eqz p2, :cond_2

    .line 450
    invoke-static {}, Lcom/samsung/android/server/uwb/factory/UwbFactoryCommand$Command;->values()[Lcom/samsung/android/server/uwb/factory/UwbFactoryCommand$Command;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 451
    .local v3, "command":Lcom/samsung/android/server/uwb/factory/UwbFactoryCommand$Command;
    invoke-static {v3}, Lcom/samsung/android/server/uwb/factory/UwbFactoryCommand$Command;->-$$Nest$fgetmIsStaticCmd(Lcom/samsung/android/server/uwb/factory/UwbFactoryCommand$Command;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Lcom/samsung/android/server/uwb/factory/UwbFactoryCommand$Command;->-$$Nest$fgetmCommand(Lcom/samsung/android/server/uwb/factory/UwbFactoryCommand$Command;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 452
    return-object v3

    .line 450
    .end local v3    # "command":Lcom/samsung/android/server/uwb/factory/UwbFactoryCommand$Command;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 456
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static handleCommand(I[ILjava/lang/String;)Lcom/samsung/android/server/uwb/factory/UwbFactoryCommand$Command;
    .locals 3
    .param p0, "id"    # I
    .param p1, "iData"    # [I
    .param p2, "sData"    # Ljava/lang/String;

    .line 435
    invoke-static {p1, p2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryCommand;->isValidCommand([ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 436
    const/4 v0, 0x0

    return-object v0

    .line 438
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryCommand;->reproduceCommand(I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 439
    .local v0, "atCommand":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AT+UWBDTEST="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UwbFactoryCommand"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    invoke-static {v0, p1, p2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryCommand;->find(Ljava/lang/String;[ILjava/lang/String;)Lcom/samsung/android/server/uwb/factory/UwbFactoryCommand$Command;

    move-result-object v1

    .line 442
    .local v1, "command":Lcom/samsung/android/server/uwb/factory/UwbFactoryCommand$Command;
    return-object v1
.end method

.method private static isValidCommand([ILjava/lang/String;)Z
    .locals 5
    .param p0, "iData"    # [I
    .param p1, "sData"    # Ljava/lang/String;

    .line 460
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "UwbFactoryCommand"

    if-eqz v0, :cond_0

    .line 461
    const-string v0, "isValidCommand: iData is empty"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    return v1

    .line 464
    :cond_0
    array-length v0, p0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v0, v3, :cond_1

    if-eqz p1, :cond_1

    .line 465
    return v4

    .line 466
    :cond_1
    array-length v0, p0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    if-nez p1, :cond_2

    .line 467
    return v4

    .line 469
    :cond_2
    const-string v0, "isValidCommand: inValid command config"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    return v1
.end method

.method private static isValidTxCalFilename(Ljava/lang/String;)Z
    .locals 1
    .param p0, "sData"    # Ljava/lang/String;

    .line 475
    const-string v0, "5_M_1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "5_P_1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "9_M_1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "9_P_1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 478
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 476
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private static reproduceCommand(I[ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "id"    # I
    .param p1, "iData"    # [I
    .param p2, "sData"    # Ljava/lang/String;

    .line 483
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 484
    .local v0, "sb":Ljava/lang/StringBuffer;
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    const-string v3, ","

    if-ge v2, v1, :cond_0

    aget v4, p1, v2

    .line 485
    .local v4, "data":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 484
    .end local v4    # "data":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 487
    :cond_0
    if-eqz p2, :cond_1

    .line 488
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 490
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
