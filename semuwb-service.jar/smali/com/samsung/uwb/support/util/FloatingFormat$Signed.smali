.class final enum Lcom/samsung/uwb/support/util/FloatingFormat$Signed;
.super Ljava/lang/Enum;
.source "FloatingFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/uwb/support/util/FloatingFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Signed"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/uwb/support/util/FloatingFormat$Signed;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/uwb/support/util/FloatingFormat$Signed;

.field public static final enum SIGNED_VALUE:Lcom/samsung/uwb/support/util/FloatingFormat$Signed;

.field public static final enum UNSIGNED_VALUE:Lcom/samsung/uwb/support/util/FloatingFormat$Signed;


# direct methods
.method private static synthetic $values()[Lcom/samsung/uwb/support/util/FloatingFormat$Signed;
    .locals 2

    .line 51
    sget-object v0, Lcom/samsung/uwb/support/util/FloatingFormat$Signed;->UNSIGNED_VALUE:Lcom/samsung/uwb/support/util/FloatingFormat$Signed;

    sget-object v1, Lcom/samsung/uwb/support/util/FloatingFormat$Signed;->SIGNED_VALUE:Lcom/samsung/uwb/support/util/FloatingFormat$Signed;

    filled-new-array {v0, v1}, [Lcom/samsung/uwb/support/util/FloatingFormat$Signed;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 52
    new-instance v0, Lcom/samsung/uwb/support/util/FloatingFormat$Signed;

    const-string v1, "UNSIGNED_VALUE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/uwb/support/util/FloatingFormat$Signed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/uwb/support/util/FloatingFormat$Signed;->UNSIGNED_VALUE:Lcom/samsung/uwb/support/util/FloatingFormat$Signed;

    new-instance v0, Lcom/samsung/uwb/support/util/FloatingFormat$Signed;

    const-string v1, "SIGNED_VALUE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/uwb/support/util/FloatingFormat$Signed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/uwb/support/util/FloatingFormat$Signed;->SIGNED_VALUE:Lcom/samsung/uwb/support/util/FloatingFormat$Signed;

    .line 51
    invoke-static {}, Lcom/samsung/uwb/support/util/FloatingFormat$Signed;->$values()[Lcom/samsung/uwb/support/util/FloatingFormat$Signed;

    move-result-object v0

    sput-object v0, Lcom/samsung/uwb/support/util/FloatingFormat$Signed;->$VALUES:[Lcom/samsung/uwb/support/util/FloatingFormat$Signed;

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

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/uwb/support/util/FloatingFormat$Signed;
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

    .line 51
    const-class v0, Lcom/samsung/uwb/support/util/FloatingFormat$Signed;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/uwb/support/util/FloatingFormat$Signed;

    return-object v0
.end method

.method public static values()[Lcom/samsung/uwb/support/util/FloatingFormat$Signed;
    .locals 1

    .line 51
    sget-object v0, Lcom/samsung/uwb/support/util/FloatingFormat$Signed;->$VALUES:[Lcom/samsung/uwb/support/util/FloatingFormat$Signed;

    invoke-virtual {v0}, [Lcom/samsung/uwb/support/util/FloatingFormat$Signed;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/uwb/support/util/FloatingFormat$Signed;

    return-object v0
.end method
