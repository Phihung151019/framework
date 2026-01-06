.class public final enum Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;
.super Ljava/lang/Enum;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic greylist $VALUES:[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;

.field public static final enum greylist NCHW:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;

.field public static final enum greylist NHWC:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;


# instance fields
.field private final greylist value:B


# direct methods
.method public static synthetic greylist $values()[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;->NCHW:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;

    sget-object v1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;->NHWC:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;

    filled-new-array {v0, v1}, [Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;

    move-result-object v0

    return-object v0
.end method

.method static constructor greylist <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;

    const-string v1, "NCHW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;->NCHW:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;

    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;

    const-string v1, "NHWC"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;->NHWC:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;

    invoke-static {}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;->$values()[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;->$VALUES:[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;

    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;II)V
    .locals 0
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
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    int-to-byte p1, p3

    iput-byte p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;->value:B

    return-void
.end method

.method public static greylist valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;

    return-object p0
.end method

.method public static greylist values()[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;->$VALUES:[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;

    return-object v0
.end method


# virtual methods
.method public greylist getValue()B
    .locals 0

    iget-byte p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;->value:B

    return p0
.end method
