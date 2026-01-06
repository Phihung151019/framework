.class public Landroidx/car/app/model/CarText$SpanWrapper;
.super Ljava/lang/Object;
.source "CarText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/model/CarText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpanWrapper"
.end annotation


# instance fields
.field private final mCarSpan:Landroidx/car/app/model/CarSpan;

.field private final mEnd:I

.field private final mFlags:I

.field private final mStart:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    const/4 v0, 0x0

    iput v0, p0, Landroidx/car/app/model/CarText$SpanWrapper;->mStart:I

    .line 295
    iput v0, p0, Landroidx/car/app/model/CarText$SpanWrapper;->mEnd:I

    .line 296
    iput v0, p0, Landroidx/car/app/model/CarText$SpanWrapper;->mFlags:I

    .line 297
    new-instance v0, Landroidx/car/app/model/CarSpan;

    invoke-direct {v0}, Landroidx/car/app/model/CarSpan;-><init>()V

    iput-object v0, p0, Landroidx/car/app/model/CarText$SpanWrapper;->mCarSpan:Landroidx/car/app/model/CarSpan;

    .line 298
    return-void
.end method

.method constructor <init>(Landroid/text/Spanned;Landroidx/car/app/model/CarSpan;)V
    .locals 1
    .param p1, "spanned"    # Landroid/text/Spanned;
    .param p2, "carSpan"    # Landroidx/car/app/model/CarSpan;

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Landroidx/car/app/model/CarText$SpanWrapper;->mStart:I

    .line 288
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Landroidx/car/app/model/CarText$SpanWrapper;->mEnd:I

    .line 289
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Landroidx/car/app/model/CarText$SpanWrapper;->mFlags:I

    .line 290
    iput-object p2, p0, Landroidx/car/app/model/CarText$SpanWrapper;->mCarSpan:Landroidx/car/app/model/CarSpan;

    .line 291
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 319
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 320
    return v0

    .line 322
    :cond_0
    instance-of v1, p1, Landroidx/car/app/model/CarText$SpanWrapper;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 323
    return v2

    .line 325
    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/car/app/model/CarText$SpanWrapper;

    .line 326
    .local v1, "wrapper":Landroidx/car/app/model/CarText$SpanWrapper;
    iget v3, p0, Landroidx/car/app/model/CarText$SpanWrapper;->mStart:I

    iget v4, v1, Landroidx/car/app/model/CarText$SpanWrapper;->mStart:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroidx/car/app/model/CarText$SpanWrapper;->mEnd:I

    iget v4, v1, Landroidx/car/app/model/CarText$SpanWrapper;->mEnd:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroidx/car/app/model/CarText$SpanWrapper;->mFlags:I

    iget v4, v1, Landroidx/car/app/model/CarText$SpanWrapper;->mFlags:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroidx/car/app/model/CarText$SpanWrapper;->mCarSpan:Landroidx/car/app/model/CarSpan;

    iget-object v4, v1, Landroidx/car/app/model/CarText$SpanWrapper;->mCarSpan:Landroidx/car/app/model/CarSpan;

    .line 329
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 326
    :goto_0
    return v0
.end method

.method public getCarSpan()Landroidx/car/app/model/CarSpan;
    .locals 1

    .line 314
    iget-object v0, p0, Landroidx/car/app/model/CarText$SpanWrapper;->mCarSpan:Landroidx/car/app/model/CarSpan;

    return-object v0
.end method

.method public getEnd()I
    .locals 1

    .line 305
    iget v0, p0, Landroidx/car/app/model/CarText$SpanWrapper;->mEnd:I

    return v0
.end method

.method public getFlags()I
    .locals 1

    .line 309
    iget v0, p0, Landroidx/car/app/model/CarText$SpanWrapper;->mFlags:I

    return v0
.end method

.method public getStart()I
    .locals 1

    .line 301
    iget v0, p0, Landroidx/car/app/model/CarText$SpanWrapper;->mStart:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 334
    iget v0, p0, Landroidx/car/app/model/CarText$SpanWrapper;->mStart:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroidx/car/app/model/CarText$SpanWrapper;->mEnd:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroidx/car/app/model/CarText$SpanWrapper;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroidx/car/app/model/CarText$SpanWrapper;->mCarSpan:Landroidx/car/app/model/CarSpan;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/model/CarText$SpanWrapper;->mCarSpan:Landroidx/car/app/model/CarSpan;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/car/app/model/CarText$SpanWrapper;->mStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/car/app/model/CarText$SpanWrapper;->mEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flags: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/car/app/model/CarText$SpanWrapper;->mFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
