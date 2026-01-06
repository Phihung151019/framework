.class final enum Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;
.super Ljava/lang/Enum;
.source "FloatingFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/uwb/support/util/FloatingFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Q_Format"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;

.field public static final enum Q_10_6:Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;

.field public static final enum Q_8_8:Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;

.field public static final enum Q_9_7:Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;


# instance fields
.field mNumberOfFrac:I

.field mNumberOfInt:I


# direct methods
.method private static synthetic $values()[Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;
    .locals 3

    .line 55
    sget-object v0, Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;->Q_8_8:Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;

    sget-object v1, Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;->Q_9_7:Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;

    sget-object v2, Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;->Q_10_6:Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;

    filled-new-array {v0, v1, v2}, [Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 56
    new-instance v0, Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;

    const/4 v1, 0x0

    const/16 v2, 0x8

    const-string v3, "Q_8_8"

    invoke-direct {v0, v3, v1, v2, v2}, Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;->Q_8_8:Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;

    .line 57
    new-instance v0, Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;

    const/16 v1, 0x9

    const/4 v2, 0x7

    const-string v3, "Q_9_7"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;->Q_9_7:Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;

    .line 58
    new-instance v0, Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;

    const/16 v1, 0xa

    const/4 v2, 0x6

    const-string v3, "Q_10_6"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;->Q_10_6:Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;

    .line 55
    invoke-static {}, Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;->$values()[Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;

    move-result-object v0

    sput-object v0, Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;->$VALUES:[Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "nInt"    # I
    .param p4, "nFrac"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 61
    iput p3, p0, Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;->mNumberOfInt:I

    .line 62
    iput p4, p0, Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;->mNumberOfFrac:I

    .line 63
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;
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

    .line 55
    const-class v0, Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;

    return-object v0
.end method

.method public static values()[Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;
    .locals 1

    .line 55
    sget-object v0, Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;->$VALUES:[Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;

    invoke-virtual {v0}, [Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/uwb/support/util/FloatingFormat$Q_Format;

    return-object v0
.end method
