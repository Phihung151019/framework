.class public final enum Lcom/sec/vsim/app/jansky/PendingLineStatusType;
.super Ljava/lang/Enum;
.source "PendingLineStatusType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/vsim/app/jansky/PendingLineStatusType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/vsim/app/jansky/PendingLineStatusType;

.field public static final enum APPROVED:Lcom/sec/vsim/app/jansky/PendingLineStatusType;

.field public static final enum CANCELLED:Lcom/sec/vsim/app/jansky/PendingLineStatusType;

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final enum PENDING:Lcom/sec/vsim/app/jansky/PendingLineStatusType;

.field public static final enum REJECTED:Lcom/sec/vsim/app/jansky/PendingLineStatusType;

.field public static final enum TIME_OUT:Lcom/sec/vsim/app/jansky/PendingLineStatusType;

.field private static final sLookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/vsim/app/jansky/PendingLineStatusType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final typeName:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/sec/vsim/app/jansky/PendingLineStatusType;
    .locals 5

    .line 9
    sget-object v0, Lcom/sec/vsim/app/jansky/PendingLineStatusType;->PENDING:Lcom/sec/vsim/app/jansky/PendingLineStatusType;

    sget-object v1, Lcom/sec/vsim/app/jansky/PendingLineStatusType;->APPROVED:Lcom/sec/vsim/app/jansky/PendingLineStatusType;

    sget-object v2, Lcom/sec/vsim/app/jansky/PendingLineStatusType;->TIME_OUT:Lcom/sec/vsim/app/jansky/PendingLineStatusType;

    sget-object v3, Lcom/sec/vsim/app/jansky/PendingLineStatusType;->REJECTED:Lcom/sec/vsim/app/jansky/PendingLineStatusType;

    sget-object v4, Lcom/sec/vsim/app/jansky/PendingLineStatusType;->CANCELLED:Lcom/sec/vsim/app/jansky/PendingLineStatusType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/sec/vsim/app/jansky/PendingLineStatusType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 13
    new-instance v0, Lcom/sec/vsim/app/jansky/PendingLineStatusType;

    const-string v1, "pending"

    const-string v2, "PENDING"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/sec/vsim/app/jansky/PendingLineStatusType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/vsim/app/jansky/PendingLineStatusType;->PENDING:Lcom/sec/vsim/app/jansky/PendingLineStatusType;

    .line 18
    new-instance v0, Lcom/sec/vsim/app/jansky/PendingLineStatusType;

    const/4 v1, 0x1

    const-string v2, "approved"

    const-string v4, "APPROVED"

    invoke-direct {v0, v4, v1, v2}, Lcom/sec/vsim/app/jansky/PendingLineStatusType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/vsim/app/jansky/PendingLineStatusType;->APPROVED:Lcom/sec/vsim/app/jansky/PendingLineStatusType;

    .line 23
    new-instance v0, Lcom/sec/vsim/app/jansky/PendingLineStatusType;

    const/4 v1, 0x2

    const-string v2, "timeout"

    const-string v4, "TIME_OUT"

    invoke-direct {v0, v4, v1, v2}, Lcom/sec/vsim/app/jansky/PendingLineStatusType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/vsim/app/jansky/PendingLineStatusType;->TIME_OUT:Lcom/sec/vsim/app/jansky/PendingLineStatusType;

    .line 28
    new-instance v0, Lcom/sec/vsim/app/jansky/PendingLineStatusType;

    const/4 v1, 0x3

    const-string v2, "rejected"

    const-string v4, "REJECTED"

    invoke-direct {v0, v4, v1, v2}, Lcom/sec/vsim/app/jansky/PendingLineStatusType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/vsim/app/jansky/PendingLineStatusType;->REJECTED:Lcom/sec/vsim/app/jansky/PendingLineStatusType;

    .line 33
    new-instance v0, Lcom/sec/vsim/app/jansky/PendingLineStatusType;

    const/4 v1, 0x4

    const-string v2, "cancelled"

    const-string v4, "CANCELLED"

    invoke-direct {v0, v4, v1, v2}, Lcom/sec/vsim/app/jansky/PendingLineStatusType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/vsim/app/jansky/PendingLineStatusType;->CANCELLED:Lcom/sec/vsim/app/jansky/PendingLineStatusType;

    .line 9
    invoke-static {}, Lcom/sec/vsim/app/jansky/PendingLineStatusType;->$values()[Lcom/sec/vsim/app/jansky/PendingLineStatusType;

    move-result-object v0

    sput-object v0, Lcom/sec/vsim/app/jansky/PendingLineStatusType;->$VALUES:[Lcom/sec/vsim/app/jansky/PendingLineStatusType;

    .line 35
    const-class v0, Lcom/sec/vsim/app/jansky/PendingLineStatusType;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/vsim/app/jansky/PendingLineStatusType;->LOG_TAG:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/vsim/app/jansky/PendingLineStatusType;->sLookup:Ljava/util/Map;

    .line 42
    invoke-static {}, Lcom/sec/vsim/app/jansky/PendingLineStatusType;->values()[Lcom/sec/vsim/app/jansky/PendingLineStatusType;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    .line 43
    .local v2, "type":Lcom/sec/vsim/app/jansky/PendingLineStatusType;
    sget-object v4, Lcom/sec/vsim/app/jansky/PendingLineStatusType;->sLookup:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/sec/vsim/app/jansky/PendingLineStatusType;->getTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .end local v2    # "type":Lcom/sec/vsim/app/jansky/PendingLineStatusType;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 45
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "typeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput-object p3, p0, Lcom/sec/vsim/app/jansky/PendingLineStatusType;->typeName:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/sec/vsim/app/jansky/PendingLineStatusType;
    .locals 4
    .param p0, "typeName"    # Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, "type":Lcom/sec/vsim/app/jansky/PendingLineStatusType;
    if-eqz p0, :cond_0

    .line 66
    sget-object v1, Lcom/sec/vsim/app/jansky/PendingLineStatusType;->sLookup:Ljava/util/Map;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/sec/vsim/app/jansky/PendingLineStatusType;

    .line 67
    sget-object v1, Lcom/sec/vsim/app/jansky/PendingLineStatusType;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get: pending line status type, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_0
    if-nez v0, :cond_1

    sget-object v1, Lcom/sec/vsim/app/jansky/PendingLineStatusType;->PENDING:Lcom/sec/vsim/app/jansky/PendingLineStatusType;

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/vsim/app/jansky/PendingLineStatusType;
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

    .line 9
    const-class v0, Lcom/sec/vsim/app/jansky/PendingLineStatusType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/vsim/app/jansky/PendingLineStatusType;

    return-object v0
.end method

.method public static values()[Lcom/sec/vsim/app/jansky/PendingLineStatusType;
    .locals 1

    .line 9
    sget-object v0, Lcom/sec/vsim/app/jansky/PendingLineStatusType;->$VALUES:[Lcom/sec/vsim/app/jansky/PendingLineStatusType;

    invoke-virtual {v0}, [Lcom/sec/vsim/app/jansky/PendingLineStatusType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/vsim/app/jansky/PendingLineStatusType;

    return-object v0
.end method


# virtual methods
.method public equalsName(Ljava/lang/String;)Z
    .locals 1
    .param p1, "typeName"    # Ljava/lang/String;

    .line 78
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/vsim/app/jansky/PendingLineStatusType;->typeName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/sec/vsim/app/jansky/PendingLineStatusType;->typeName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/sec/vsim/app/jansky/PendingLineStatusType;->typeName:Ljava/lang/String;

    return-object v0
.end method
