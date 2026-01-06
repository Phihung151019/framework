.class public Lcom/samsung/android/server/uwb/calibration/parser/CalibrationTokenizer;
.super Ljava/lang/Object;
.source "CalibrationTokenizer.java"


# static fields
.field private static final ALL_WHITE_SPACES:Ljava/lang/String; = "\\s"

.field private static final COMMENT:Ljava/lang/String; = "#"

.field private static final EQUALS:Ljava/lang/String; = "="

.field private static final TAG:Ljava/lang/String; = "Tokenizer"


# instance fields
.field private mCurrentIndex:I

.field mTokenList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/samsung/android/server/uwb/calibration/parser/Token;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$u1WQcTJbXEKG92W3R8Zll29DkxE(Lcom/samsung/android/server/uwb/calibration/parser/CalibrationTokenizer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/server/uwb/calibration/parser/CalibrationTokenizer;->lambda$parse_V1$2(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 21
    .local p1, "input":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/calibration/parser/CalibrationTokenizer;->mTokenList:Ljava/util/LinkedList;

    .line 22
    const-string v0, "Tokenizer"

    const-string v1, "create Scanners"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/uwb/calibration/parser/CalibrationTokenizer$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/samsung/android/server/uwb/calibration/parser/CalibrationTokenizer$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/uwb/calibration/parser/CalibrationTokenizer$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/samsung/android/server/uwb/calibration/parser/CalibrationTokenizer$$ExternalSyntheticLambda3;-><init>()V

    .line 25
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/uwb/calibration/parser/CalibrationTokenizer$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/samsung/android/server/uwb/calibration/parser/CalibrationTokenizer$$ExternalSyntheticLambda4;-><init>()V

    .line 26
    invoke-static {v1}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 28
    .local v0, "filterLines":Ljava/util/ArrayList;
    invoke-direct {p0, v0}, Lcom/samsung/android/server/uwb/calibration/parser/CalibrationTokenizer;->parse_V1(Ljava/util/ArrayList;)V

    .line 29
    invoke-virtual {p0}, Lcom/samsung/android/server/uwb/calibration/parser/CalibrationTokenizer;->printValidTokenList()V

    .line 30
    return-void
.end method

.method static synthetic lambda$new$0(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 24
    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$new$1(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .line 25
    const-string v0, "\\s"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$parse_V1$2(Ljava/lang/String;)V
    .locals 5
    .param p1, "line"    # Ljava/lang/String;

    .line 37
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "Tokenizer"

    if-eqz v1, :cond_1

    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "splits":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v3, v0, v1

    if-eqz v3, :cond_0

    .line 40
    new-instance v3, Lcom/samsung/android/server/uwb/calibration/parser/Token;

    aget-object v1, v0, v1

    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-direct {v3, v1, v4}, Lcom/samsung/android/server/uwb/calibration/parser/Token;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .local v3, "token":Lcom/samsung/android/server/uwb/calibration/parser/Token;
    iget-object v1, p0, Lcom/samsung/android/server/uwb/calibration/parser/CalibrationTokenizer;->mTokenList:Ljava/util/LinkedList;

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .end local v0    # "splits":[Ljava/lang/String;
    .end local v3    # "token":Lcom/samsung/android/server/uwb/calibration/parser/Token;
    :cond_0
    goto :goto_0

    .line 45
    :cond_1
    const-string v0, "concat data to previous"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/parser/CalibrationTokenizer;->mTokenList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/uwb/calibration/parser/Token;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/uwb/calibration/parser/Token;->appendValue(Ljava/lang/String;)V

    .line 48
    :goto_0
    return-void
.end method

.method static synthetic lambda$printValidTokenList$3(Lcom/samsung/android/server/uwb/calibration/parser/Token;)V
    .locals 2
    .param p0, "t"    # Lcom/samsung/android/server/uwb/calibration/parser/Token;

    .line 55
    const-string v0, "Tokenizer"

    invoke-virtual {p0}, Lcom/samsung/android/server/uwb/calibration/parser/Token;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private parse_V1(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 33
    .local p1, "input":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "Tokenizer"

    const-string v1, "parse_V1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    new-instance v0, Lcom/samsung/android/server/uwb/calibration/parser/CalibrationTokenizer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/uwb/calibration/parser/CalibrationTokenizer$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/uwb/calibration/parser/CalibrationTokenizer;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/server/uwb/calibration/parser/CalibrationTokenizer;->mCurrentIndex:I

    .line 52
    return-void
.end method


# virtual methods
.method public initializeIndex()V
    .locals 1

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/server/uwb/calibration/parser/CalibrationTokenizer;->mCurrentIndex:I

    .line 68
    return-void
.end method

.method public isLastIndex()Z
    .locals 2

    .line 86
    iget v0, p0, Lcom/samsung/android/server/uwb/calibration/parser/CalibrationTokenizer;->mCurrentIndex:I

    iget-object v1, p0, Lcom/samsung/android/server/uwb/calibration/parser/CalibrationTokenizer;->mTokenList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public moveNext()Z
    .locals 2

    .line 78
    invoke-virtual {p0}, Lcom/samsung/android/server/uwb/calibration/parser/CalibrationTokenizer;->isLastIndex()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    const/4 v0, 0x0

    return v0

    .line 81
    :cond_0
    iget v0, p0, Lcom/samsung/android/server/uwb/calibration/parser/CalibrationTokenizer;->mCurrentIndex:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/server/uwb/calibration/parser/CalibrationTokenizer;->mCurrentIndex:I

    .line 82
    return v1
.end method

.method public movePrevious()Z
    .locals 2

    .line 71
    iget v0, p0, Lcom/samsung/android/server/uwb/calibration/parser/CalibrationTokenizer;->mCurrentIndex:I

    if-nez v0, :cond_0

    .line 72
    const/4 v0, 0x0

    return v0

    .line 73
    :cond_0
    iget v0, p0, Lcom/samsung/android/server/uwb/calibration/parser/CalibrationTokenizer;->mCurrentIndex:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/server/uwb/calibration/parser/CalibrationTokenizer;->mCurrentIndex:I

    .line 74
    return v1
.end method

.method public printValidTokenList()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/parser/CalibrationTokenizer;->mTokenList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/uwb/calibration/parser/CalibrationTokenizer$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/server/uwb/calibration/parser/CalibrationTokenizer$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 56
    return-void
.end method

.method public readName()Ljava/lang/String;
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/parser/CalibrationTokenizer;->mTokenList:Ljava/util/LinkedList;

    iget v1, p0, Lcom/samsung/android/server/uwb/calibration/parser/CalibrationTokenizer;->mCurrentIndex:I

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/uwb/calibration/parser/Token;

    iget-object v0, v0, Lcom/samsung/android/server/uwb/calibration/parser/Token;->name:Ljava/lang/String;

    return-object v0
.end method

.method public readValue()Ljava/lang/String;
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/parser/CalibrationTokenizer;->mTokenList:Ljava/util/LinkedList;

    iget v1, p0, Lcom/samsung/android/server/uwb/calibration/parser/CalibrationTokenizer;->mCurrentIndex:I

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/uwb/calibration/parser/Token;

    iget-object v0, v0, Lcom/samsung/android/server/uwb/calibration/parser/Token;->value:Ljava/lang/String;

    return-object v0
.end method
