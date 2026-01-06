.class public final enum Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;
.super Ljava/lang/Enum;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic greylist $VALUES:[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

.field public static final enum greylist BYTE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

.field public static final enum greylist FLOAT16:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

.field public static final enum greylist FLOAT32:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

.field public static final enum greylist INT32:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

.field public static final enum greylist INT64:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

.field public static final enum greylist SEQUENCE_MAP:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

.field public static final enum greylist STRING:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;


# instance fields
.field private final greylist value:B


# direct methods
.method public static synthetic greylist $values()[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;
    .locals 7

    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->FLOAT32:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    sget-object v1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->FLOAT16:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    sget-object v2, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->BYTE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    sget-object v3, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->INT64:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    sget-object v4, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->STRING:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    sget-object v5, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->SEQUENCE_MAP:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    sget-object v6, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->INT32:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    filled-new-array/range {v0 .. v6}, [Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    move-result-object v0

    return-object v0
.end method

.method static constructor greylist <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    const-string v1, "FLOAT32"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->FLOAT32:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    const-string v1, "FLOAT16"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->FLOAT16:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    const-string v1, "BYTE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->BYTE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    const-string v1, "INT64"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->INT64:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    const-string v1, "STRING"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->STRING:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    const-string v1, "SEQUENCE_MAP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->SEQUENCE_MAP:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    const-string v1, "INT32"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->INT32:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    invoke-static {}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->$values()[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->$VALUES:[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

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

    iput-byte p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->value:B

    return-void
.end method

.method public static greylist valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    return-object p0
.end method

.method public static greylist values()[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->$VALUES:[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    return-object v0
.end method


# virtual methods
.method public greylist getValue()B
    .locals 0

    iget-byte p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->value:B

    return p0
.end method
