.class public Lorg/apache/commons/math3/linear/ArrayFieldVector;
.super Ljava/lang/Object;
.source "ArrayFieldVector.java"

# interfaces
.implements Lorg/apache/commons/math3/linear/FieldVector;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/FieldElement<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/linear/FieldVector<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6a23d1792027468aL


# instance fields
.field private data:[Lorg/apache/commons/math3/FieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private final field:Lorg/apache/commons/math3/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/Field<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILorg/apache/commons/math3/FieldElement;)V
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 83
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p2, "preset":Lorg/apache/commons/math3/FieldElement;, "TT;"
    invoke-interface {p2}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;I)V

    .line 84
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    invoke-static {v0, p2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/Field;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;)V"
        }
    .end annotation

    .line 62
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/Field;I)V
    .locals 1
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;I)V"
        }
    .end annotation

    .line 71
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    .line 73
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    .line 74
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;[TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 119
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    .local p2, "d":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 121
    iput-object p1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    .line 122
    invoke-virtual {p2}, [Lorg/apache/commons/math3/FieldElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    .line 123
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;II)V
    .locals 4
    .param p3, "pos"    # I
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;[TT;II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 211
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    .local p2, "d":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 213
    array-length v0, p2

    add-int v1, p3, p4

    if-lt v0, v1, :cond_0

    .line 216
    iput-object p1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    .line 217
    invoke-static {p1, p4}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    .line 218
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    const/4 v1, 0x0

    invoke-static {p2, p3, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 219
    return-void

    .line 214
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    add-int v1, p3, p4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    array-length v2, p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0
.end method

.method public constructor <init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V
    .locals 1
    .param p3, "copyArray"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;[TT;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 172
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    .local p2, "d":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 174
    iput-object p1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    .line 175
    if-eqz p3, :cond_0

    invoke-virtual {p2}, [Lorg/apache/commons/math3/FieldElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    .line 176
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;[Lorg/apache/commons/math3/FieldElement;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;[TT;[TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/ZeroException;
        }
    .end annotation

    .line 415
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    .local p2, "v1":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .local p3, "v2":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 417
    invoke-static {p3}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 418
    array-length v0, p2

    array-length v1, p3

    add-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 421
    array-length v0, p2

    array-length v2, p3

    add-int/2addr v0, v2

    invoke-static {p1, v0}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    .line 422
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v2, p2

    invoke-static {p2, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 423
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v2, p2

    array-length v3, p3

    invoke-static {p3, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 424
    iput-object p1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    .line 425
    return-void

    .line 419
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/ZeroException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->VECTOR_MUST_HAVE_AT_LEAST_ONE_ELEMENT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/math3/exception/ZeroException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/ArrayFieldVector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/ArrayFieldVector<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 244
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "v":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 246
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    .line 247
    iget-object v0, p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/FieldElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    .line 248
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/ArrayFieldVector;Lorg/apache/commons/math3/linear/ArrayFieldVector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/ArrayFieldVector<",
            "TT;>;",
            "Lorg/apache/commons/math3/linear/ArrayFieldVector<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 277
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "v1":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p2, "v2":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/linear/FieldVector;Lorg/apache/commons/math3/linear/FieldVector;)V

    .line 278
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/ArrayFieldVector;Z)V
    .locals 1
    .param p2, "deep"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/ArrayFieldVector<",
            "TT;>;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 259
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "v":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 261
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    .line 262
    iget-object v0, p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    if-eqz p2, :cond_0

    invoke-virtual {v0}, [Lorg/apache/commons/math3/FieldElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    :cond_0
    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    .line 263
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/ArrayFieldVector;[Lorg/apache/commons/math3/FieldElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/ArrayFieldVector<",
            "TT;>;[TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 315
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "v1":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p2, "v2":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/linear/FieldVector;[Lorg/apache/commons/math3/FieldElement;)V

    .line 316
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/FieldVector;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 228
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "v":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 230
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVector;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    .line 231
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVector;->getDimension()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    .line 232
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 233
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/linear/FieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v2

    aput-object v2, v1, v0

    .line 232
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/FieldVector;Lorg/apache/commons/math3/linear/FieldVector;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 290
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "v1":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    .local p2, "v2":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 292
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 293
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVector;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    .line 294
    instance-of v0, p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    iget-object v0, v0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVector;->toArray()[Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    .line 296
    .local v0, "v1Data":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    :goto_0
    instance-of v1, p2, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    if-eqz v1, :cond_1

    move-object v1, p2

    check-cast v1, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    iget-object v1, v1, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Lorg/apache/commons/math3/linear/FieldVector;->toArray()[Lorg/apache/commons/math3/FieldElement;

    move-result-object v1

    .line 298
    .local v1, "v2Data":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    :goto_1
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    array-length v3, v0

    array-length v4, v1

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/commons/math3/FieldElement;

    iput-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    .line 299
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 300
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v3, v0

    array-length v5, v1

    invoke-static {v1, v4, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 301
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/FieldVector;[Lorg/apache/commons/math3/FieldElement;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;[TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 328
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "v1":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    .local p2, "v2":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 330
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 331
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVector;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    .line 332
    instance-of v0, p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    iget-object v0, v0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVector;->toArray()[Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    .line 334
    .local v0, "v1Data":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    array-length v2, v0

    array-length v3, p2

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/commons/math3/FieldElement;

    iput-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    .line 335
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 336
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v2, v0

    array-length v4, p2

    invoke-static {p2, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 337
    return-void
.end method

.method public constructor <init>([Lorg/apache/commons/math3/FieldElement;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/ZeroException;
        }
    .end annotation

    .line 100
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "d":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 103
    const/4 v0, 0x0

    :try_start_0
    aget-object v1, p1, v0

    invoke-interface {v1}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    .line 104
    invoke-virtual {p1}, [Lorg/apache/commons/math3/FieldElement;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/commons/math3/FieldElement;

    iput-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    nop

    .line 108
    return-void

    .line 105
    :catch_0
    move-exception v1

    .line 106
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v2, Lorg/apache/commons/math3/exception/ZeroException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->VECTOR_MUST_HAVE_AT_LEAST_ONE_ELEMENT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {v2, v3, v0}, Lorg/apache/commons/math3/exception/ZeroException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2
.end method

.method public constructor <init>([Lorg/apache/commons/math3/FieldElement;II)V
    .locals 4
    .param p2, "pos"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 189
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "d":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 191
    array-length v0, p1

    add-int v1, p2, p3

    if-lt v0, v1, :cond_0

    .line 194
    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-interface {v1}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    .line 195
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    invoke-static {v1, p3}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/commons/math3/FieldElement;

    iput-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    .line 196
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    return-void

    .line 192
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    add-int v1, p2, p3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    array-length v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0
.end method

.method public constructor <init>([Lorg/apache/commons/math3/FieldElement;Lorg/apache/commons/math3/linear/ArrayFieldVector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;",
            "Lorg/apache/commons/math3/linear/ArrayFieldVector<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 351
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "v1":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .local p2, "v2":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>([Lorg/apache/commons/math3/FieldElement;Lorg/apache/commons/math3/linear/FieldVector;)V

    .line 352
    return-void
.end method

.method public constructor <init>([Lorg/apache/commons/math3/FieldElement;Lorg/apache/commons/math3/linear/FieldVector;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 364
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "v1":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .local p2, "v2":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 366
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 367
    invoke-interface {p2}, Lorg/apache/commons/math3/linear/FieldVector;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    .line 368
    instance-of v0, p2, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    iget-object v0, v0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lorg/apache/commons/math3/linear/FieldVector;->toArray()[Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    .line 370
    .local v0, "v2Data":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    array-length v2, p1

    array-length v3, v0

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/commons/math3/FieldElement;

    iput-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    .line 371
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 372
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v2, p1

    array-length v4, v0

    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 373
    return-void
.end method

.method public constructor <init>([Lorg/apache/commons/math3/FieldElement;Z)V
    .locals 3
    .param p2, "copyArray"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/ZeroException;
        }
    .end annotation

    .line 147
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "d":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 149
    array-length v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 152
    aget-object v0, p1, v1

    invoke-interface {v0}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    .line 153
    if-eqz p2, :cond_0

    invoke-virtual {p1}, [Lorg/apache/commons/math3/FieldElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    .line 154
    return-void

    .line 150
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/ZeroException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->VECTOR_MUST_HAVE_AT_LEAST_ONE_ELEMENT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/math3/exception/ZeroException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method public constructor <init>([Lorg/apache/commons/math3/FieldElement;[Lorg/apache/commons/math3/FieldElement;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;[TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/ZeroException;
        }
    .end annotation

    .line 391
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "v1":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .local p2, "v2":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 392
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 393
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 394
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 397
    aget-object v0, p1, v1

    invoke-interface {v0}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    array-length v2, p1

    array-length v3, p2

    add-int/2addr v2, v3

    invoke-static {v0, v2}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    .line 398
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v2, p1

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 399
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v2, p1

    array-length v3, p2

    invoke-static {p2, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 400
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v0, v0, v1

    invoke-interface {v0}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    .line 401
    return-void

    .line 395
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/ZeroException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->VECTOR_MUST_HAVE_AT_LEAST_ONE_ELEMENT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/math3/exception/ZeroException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method private checkIndex(I)V
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1115
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->getDimension()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1119
    return-void

    .line 1116
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INDEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->getDimension()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method

.method private checkIndices(II)V
    .locals 6
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1132
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->getDimension()I

    move-result v0

    .line 1133
    .local v0, "dim":I
    const/4 v1, 0x0

    .line 1134
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1133
    if-ltz p1, :cond_2

    if-ge p1, v0, :cond_2

    .line 1137
    if-ltz p2, :cond_1

    if-ge p2, v0, :cond_1

    .line 1141
    if-lt p2, p1, :cond_0

    .line 1145
    return-void

    .line 1142
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INITIAL_ROW_AFTER_FINAL_ROW:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v1}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v2

    .line 1138
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INDEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    add-int/lit8 v5, v0, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v3, v4, v2, v5}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v1

    .line 1134
    :cond_2
    new-instance v1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INDEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    add-int/lit8 v5, v0, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v3, v4, v2, v5}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v1
.end method


# virtual methods
.method public add(Lorg/apache/commons/math3/linear/ArrayFieldVector;)Lorg/apache/commons/math3/linear/ArrayFieldVector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/ArrayFieldVector<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/ArrayFieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 461
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "v":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    iget-object v0, p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->checkVectorDimensions(I)V

    .line 462
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v1, v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    .line 463
    .local v0, "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 464
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v2, v2, v1

    iget-object v3, p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v3, v3, v1

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/FieldElement;

    aput-object v2, v0, v1

    .line 463
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 466
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object v1
.end method

.method public add(Lorg/apache/commons/math3/linear/FieldVector;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 441
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "v":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->add(Lorg/apache/commons/math3/linear/ArrayFieldVector;)Lorg/apache/commons/math3/linear/ArrayFieldVector;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 442
    :catch_0
    move-exception v0

    .line 443
    .local v0, "cce":Ljava/lang/ClassCastException;
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->checkVectorDimensions(Lorg/apache/commons/math3/linear/FieldVector;)V

    .line 444
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v2, v2

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/commons/math3/FieldElement;

    .line 445
    .local v1, "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 446
    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v3, v3, v2

    invoke-interface {p1, v2}, Lorg/apache/commons/math3/linear/FieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    aput-object v3, v1, v2

    .line 445
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 448
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object v2
.end method

.method public append(Lorg/apache/commons/math3/linear/ArrayFieldVector;)Lorg/apache/commons/math3/linear/ArrayFieldVector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/ArrayFieldVector<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/ArrayFieldVector<",
            "TT;>;"
        }
    .end annotation

    .line 796
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "v":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/linear/ArrayFieldVector;Lorg/apache/commons/math3/linear/ArrayFieldVector;)V

    return-object v0
.end method

.method public append(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .line 801
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "in":Lorg/apache/commons/math3/FieldElement;, "TT;"
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    .line 802
    .local v0, "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 803
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v1, v1

    aput-object p1, v0, v1

    .line 804
    new-instance v1, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object v1
.end method

.method public append(Lorg/apache/commons/math3/linear/FieldVector;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .line 784
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "v":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->append(Lorg/apache/commons/math3/linear/ArrayFieldVector;)Lorg/apache/commons/math3/linear/ArrayFieldVector;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 785
    :catch_0
    move-exception v0

    .line 786
    .local v0, "cce":Ljava/lang/ClassCastException;
    new-instance v1, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    new-instance v2, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    invoke-direct {v2, p1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/linear/FieldVector;)V

    invoke-direct {v1, p0, v2}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/linear/ArrayFieldVector;Lorg/apache/commons/math3/linear/ArrayFieldVector;)V

    return-object v1
.end method

.method protected checkVectorDimensions(I)V
    .locals 2
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 894
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v0, v0

    if-ne v0, p1, :cond_0

    .line 897
    return-void

    .line 895
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v1, v1

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method protected checkVectorDimensions(Lorg/apache/commons/math3/linear/FieldVector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 882
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "v":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVector;->getDimension()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->checkVectorDimensions(I)V

    .line 883
    return-void
.end method

.method public copy()Lorg/apache/commons/math3/linear/FieldVector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .line 434
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/linear/ArrayFieldVector;Z)V

    return-object v0
.end method

.method public dotProduct(Lorg/apache/commons/math3/linear/ArrayFieldVector;)Lorg/apache/commons/math3/FieldElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/ArrayFieldVector<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 711
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "v":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    iget-object v0, p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->checkVectorDimensions(I)V

    .line 712
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/FieldElement;

    .line 713
    .local v0, "dot":Lorg/apache/commons/math3/FieldElement;, "TT;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 714
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v2, v2, v1

    iget-object v3, p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v3, v3, v1

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/apache/commons/math3/FieldElement;

    .line 713
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 716
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public dotProduct(Lorg/apache/commons/math3/linear/FieldVector;)Lorg/apache/commons/math3/FieldElement;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 691
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "v":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->dotProduct(Lorg/apache/commons/math3/linear/ArrayFieldVector;)Lorg/apache/commons/math3/FieldElement;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 692
    :catch_0
    move-exception v0

    .line 693
    .local v0, "cce":Ljava/lang/ClassCastException;
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->checkVectorDimensions(Lorg/apache/commons/math3/linear/FieldVector;)V

    .line 694
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/FieldElement;

    .line 695
    .local v1, "dot":Lorg/apache/commons/math3/FieldElement;, "TT;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 696
    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v3, v3, v2

    invoke-interface {p1, v2}, Lorg/apache/commons/math3/linear/FieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lorg/apache/commons/math3/FieldElement;

    .line 695
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 698
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public ebeDivide(Lorg/apache/commons/math3/linear/ArrayFieldVector;)Lorg/apache/commons/math3/linear/ArrayFieldVector;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/ArrayFieldVector<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/ArrayFieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 661
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "v":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    iget-object v0, p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->checkVectorDimensions(I)V

    .line 662
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v1, v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    .line 663
    .local v0, "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 665
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v2, v2, v1

    iget-object v3, p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v3, v3, v1

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/FieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/FieldElement;

    aput-object v2, v0, v1
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/MathArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 668
    nop

    .line 663
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 666
    :catch_0
    move-exception v2

    .line 667
    .local v2, "e":Lorg/apache/commons/math3/exception/MathArithmeticException;
    new-instance v3, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INDEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v3

    .line 670
    .end local v1    # "i":I
    .end local v2    # "e":Lorg/apache/commons/math3/exception/MathArithmeticException;
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object v1
.end method

.method public ebeDivide(Lorg/apache/commons/math3/linear/FieldVector;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 636
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "v":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->ebeDivide(Lorg/apache/commons/math3/linear/ArrayFieldVector;)Lorg/apache/commons/math3/linear/ArrayFieldVector;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 637
    :catch_0
    move-exception v0

    .line 638
    .local v0, "cce":Ljava/lang/ClassCastException;
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->checkVectorDimensions(Lorg/apache/commons/math3/linear/FieldVector;)V

    .line 639
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v2, v2

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/commons/math3/FieldElement;

    .line 640
    .local v1, "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 642
    :try_start_1
    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v3, v3, v2

    invoke-interface {p1, v2}, Lorg/apache/commons/math3/linear/FieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/FieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    aput-object v3, v1, v2
    :try_end_1
    .catch Lorg/apache/commons/math3/exception/MathArithmeticException; {:try_start_1 .. :try_end_1} :catch_1

    .line 645
    nop

    .line 640
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 643
    :catch_1
    move-exception v3

    .line 644
    .local v3, "e":Lorg/apache/commons/math3/exception/MathArithmeticException;
    new-instance v4, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INDEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v4

    .line 647
    .end local v2    # "i":I
    .end local v3    # "e":Lorg/apache/commons/math3/exception/MathArithmeticException;
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object v2
.end method

.method public ebeMultiply(Lorg/apache/commons/math3/linear/ArrayFieldVector;)Lorg/apache/commons/math3/linear/ArrayFieldVector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/ArrayFieldVector<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/ArrayFieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 624
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "v":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    iget-object v0, p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->checkVectorDimensions(I)V

    .line 625
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v1, v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    .line 626
    .local v0, "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 627
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v2, v2, v1

    iget-object v3, p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v3, v3, v1

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/FieldElement;

    aput-object v2, v0, v1

    .line 626
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 629
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object v1
.end method

.method public ebeMultiply(Lorg/apache/commons/math3/linear/FieldVector;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 604
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "v":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->ebeMultiply(Lorg/apache/commons/math3/linear/ArrayFieldVector;)Lorg/apache/commons/math3/linear/ArrayFieldVector;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 605
    :catch_0
    move-exception v0

    .line 606
    .local v0, "cce":Ljava/lang/ClassCastException;
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->checkVectorDimensions(Lorg/apache/commons/math3/linear/FieldVector;)V

    .line 607
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v2, v2

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/commons/math3/FieldElement;

    .line 608
    .local v1, "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 609
    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v3, v3, v2

    invoke-interface {p1, v2}, Lorg/apache/commons/math3/linear/FieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    aput-object v3, v1, v2

    .line 608
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 611
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 1068
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1069
    return v0

    .line 1071
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 1072
    return v1

    .line 1077
    :cond_1
    :try_start_0
    move-object v2, p1

    check-cast v2, Lorg/apache/commons/math3/linear/FieldVector;

    .line 1078
    .local v2, "rhs":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v3, v3

    invoke-interface {v2}, Lorg/apache/commons/math3/linear/FieldVector;->getDimension()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 1079
    return v1

    .line 1082
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v4, v4

    if-ge v3, v4, :cond_4

    .line 1083
    iget-object v4, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v4, v4, v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/linear/FieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_3

    .line 1084
    return v1

    .line 1082
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1087
    .end local v3    # "i":I
    :cond_4
    return v0

    .line 1088
    .end local v2    # "rhs":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    :catch_0
    move-exception v0

    .line 1090
    .local v0, "ex":Ljava/lang/ClassCastException;
    return v1
.end method

.method public getData()[Lorg/apache/commons/math3/FieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .line 675
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/FieldElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    return-object v0
.end method

.method public getDataRef()[Lorg/apache/commons/math3/FieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .line 684
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    return-object v0
.end method

.method public getDimension()I
    .locals 1

    .line 778
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v0, v0

    return v0
.end method

.method public getEntry(I)Lorg/apache/commons/math3/FieldElement;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 773
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getField()Lorg/apache/commons/math3/Field;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;"
        }
    .end annotation

    .line 429
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    return-object v0
.end method

.method public getSubVector(II)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 4
    .param p1, "index"    # I
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .line 810
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    if-ltz p2, :cond_0

    .line 813
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    invoke-direct {v0, v1, p2}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;I)V

    .line 815
    .local v0, "out":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    iget-object v2, v0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    const/4 v3, 0x0

    invoke-static {v1, p1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 819
    goto :goto_0

    .line 816
    :catch_0
    move-exception v1

    .line 817
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->checkIndex(I)V

    .line 818
    add-int v2, p1, p2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v2}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->checkIndex(I)V

    .line 820
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_0
    return-object v0

    .line 811
    .end local v0    # "out":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_ELEMENTS_SHOULD_BE_POSITIVE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0
.end method

.method public hashCode()I
    .locals 6

    .line 1101
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    const/16 v0, 0xdd6

    .line 1102
    .local v0, "h":I
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    .local v1, "arr$":[Lorg/apache/commons/math3/FieldElement;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 1103
    .local v4, "a":Lorg/apache/commons/math3/FieldElement;, "TT;"
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v5

    xor-int/2addr v0, v5

    .line 1102
    .end local v4    # "a":Lorg/apache/commons/math3/FieldElement;, "TT;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1105
    .end local v1    # "arr$":[Lorg/apache/commons/math3/FieldElement;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_0
    return v0
.end method

.method public mapAdd(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 503
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "d":Lorg/apache/commons/math3/FieldElement;, "TT;"
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v1, v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    .line 504
    .local v0, "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 505
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v2, v2, v1

    invoke-interface {v2, p1}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/FieldElement;

    aput-object v2, v0, v1

    .line 504
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 507
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object v1
.end method

.method public mapAddToSelf(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 512
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "d":Lorg/apache/commons/math3/FieldElement;, "TT;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 513
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/FieldElement;

    aput-object v2, v1, v0

    .line 512
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 515
    .end local v0    # "i":I
    :cond_0
    return-object p0
.end method

.method public mapDivide(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 555
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "d":Lorg/apache/commons/math3/FieldElement;, "TT;"
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 556
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v1, v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    .line 557
    .local v0, "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 558
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v2, v2, v1

    invoke-interface {v2, p1}, Lorg/apache/commons/math3/FieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/FieldElement;

    aput-object v2, v0, v1

    .line 557
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 560
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object v1
.end method

.method public mapDivideToSelf(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 566
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "d":Lorg/apache/commons/math3/FieldElement;, "TT;"
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 567
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 568
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Lorg/apache/commons/math3/FieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/FieldElement;

    aput-object v2, v1, v0

    .line 567
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 570
    .end local v0    # "i":I
    :cond_0
    return-object p0
.end method

.method public mapInv()Lorg/apache/commons/math3/linear/FieldVector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 575
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v1, v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    .line 576
    .local v0, "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/FieldElement;

    .line 577
    .local v1, "one":Lorg/apache/commons/math3/FieldElement;, "TT;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 579
    :try_start_0
    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v3, v3, v2

    invoke-interface {v1, v3}, Lorg/apache/commons/math3/FieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    aput-object v3, v0, v2
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/MathArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 582
    nop

    .line 577
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 580
    :catch_0
    move-exception v3

    .line 581
    .local v3, "e":Lorg/apache/commons/math3/exception/MathArithmeticException;
    new-instance v4, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INDEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v4

    .line 584
    .end local v2    # "i":I
    .end local v3    # "e":Lorg/apache/commons/math3/exception/MathArithmeticException;
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v4}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object v2
.end method

.method public mapInvToSelf()Lorg/apache/commons/math3/linear/FieldVector;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 589
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/FieldElement;

    .line 590
    .local v0, "one":Lorg/apache/commons/math3/FieldElement;, "TT;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 592
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v3, v3, v1

    invoke-interface {v0, v3}, Lorg/apache/commons/math3/FieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    aput-object v3, v2, v1
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/MathArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    nop

    .line 590
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 593
    :catch_0
    move-exception v2

    .line 594
    .local v2, "e":Lorg/apache/commons/math3/exception/MathArithmeticException;
    new-instance v3, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INDEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v3

    .line 597
    .end local v1    # "i":I
    .end local v2    # "e":Lorg/apache/commons/math3/exception/MathArithmeticException;
    :cond_0
    return-object p0
.end method

.method public mapMultiply(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 537
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "d":Lorg/apache/commons/math3/FieldElement;, "TT;"
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v1, v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    .line 538
    .local v0, "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 539
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v2, v2, v1

    invoke-interface {v2, p1}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/FieldElement;

    aput-object v2, v0, v1

    .line 538
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 541
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object v1
.end method

.method public mapMultiplyToSelf(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 546
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "d":Lorg/apache/commons/math3/FieldElement;, "TT;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 547
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/FieldElement;

    aput-object v2, v1, v0

    .line 546
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 549
    .end local v0    # "i":I
    :cond_0
    return-object p0
.end method

.method public mapSubtract(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 520
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "d":Lorg/apache/commons/math3/FieldElement;, "TT;"
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v1, v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    .line 521
    .local v0, "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 522
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v2, v2, v1

    invoke-interface {v2, p1}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/FieldElement;

    aput-object v2, v0, v1

    .line 521
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 524
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object v1
.end method

.method public mapSubtractToSelf(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 529
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "d":Lorg/apache/commons/math3/FieldElement;, "TT;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 530
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/FieldElement;

    aput-object v2, v1, v0

    .line 529
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 532
    .end local v0    # "i":I
    :cond_0
    return-object p0
.end method

.method public outerProduct(Lorg/apache/commons/math3/linear/ArrayFieldVector;)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/ArrayFieldVector<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .line 760
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "v":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v0, v0

    .line 761
    .local v0, "m":I
    iget-object v1, p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v1, v1

    .line 762
    .local v1, "n":I
    new-instance v2, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    invoke-direct {v2, v3, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    .line 763
    .local v2, "out":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<TT;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 764
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v1, :cond_0

    .line 765
    iget-object v5, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v5, v5, v3

    iget-object v6, p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v6, v6, v4

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/FieldElement;

    invoke-interface {v2, v3, v4, v5}, Lorg/apache/commons/math3/linear/FieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    .line 764
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 763
    .end local v4    # "j":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 768
    .end local v3    # "i":I
    :cond_1
    return-object v2
.end method

.method public outerProduct(Lorg/apache/commons/math3/linear/FieldVector;)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .line 740
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "v":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->outerProduct(Lorg/apache/commons/math3/linear/ArrayFieldVector;)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 741
    :catch_0
    move-exception v0

    .line 742
    .local v0, "cce":Ljava/lang/ClassCastException;
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v1, v1

    .line 743
    .local v1, "m":I
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVector;->getDimension()I

    move-result v2

    .line 744
    .local v2, "n":I
    new-instance v3, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    iget-object v4, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    invoke-direct {v3, v4, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    .line 745
    .local v3, "out":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<TT;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 746
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v2, :cond_0

    .line 747
    iget-object v6, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v6, v6, v4

    invoke-interface {p1, v5}, Lorg/apache/commons/math3/linear/FieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/FieldElement;

    invoke-interface {v3, v4, v5, v6}, Lorg/apache/commons/math3/linear/FieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    .line 746
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 745
    .end local v5    # "j":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 750
    .end local v4    # "i":I
    :cond_1
    return-object v3
.end method

.method public projection(Lorg/apache/commons/math3/linear/ArrayFieldVector;)Lorg/apache/commons/math3/linear/ArrayFieldVector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/ArrayFieldVector<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/ArrayFieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 734
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "v":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->dotProduct(Lorg/apache/commons/math3/linear/ArrayFieldVector;)Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    invoke-virtual {p1, p1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->dotProduct(Lorg/apache/commons/math3/linear/ArrayFieldVector;)Lorg/apache/commons/math3/FieldElement;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/FieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/FieldElement;

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->mapMultiply(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldVector;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    return-object v0
.end method

.method public projection(Lorg/apache/commons/math3/linear/FieldVector;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 722
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "v":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->dotProduct(Lorg/apache/commons/math3/linear/FieldVector;)Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    invoke-interface {p1, p1}, Lorg/apache/commons/math3/linear/FieldVector;->dotProduct(Lorg/apache/commons/math3/linear/FieldVector;)Lorg/apache/commons/math3/FieldElement;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/FieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/FieldElement;

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/linear/FieldVector;->mapMultiply(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldVector;

    move-result-object v0

    return-object v0
.end method

.method public set(ILorg/apache/commons/math3/linear/ArrayFieldVector;)V
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/commons/math3/linear/ArrayFieldVector<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 857
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p2, "v":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    :try_start_0
    iget-object v0, p2, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    iget-object v2, p2, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 861
    goto :goto_0

    .line 858
    :catch_0
    move-exception v0

    .line 859
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->checkIndex(I)V

    .line 860
    iget-object v1, p2, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v1, v1

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->checkIndex(I)V

    .line 862
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_0
    return-void
.end method

.method public set(Lorg/apache/commons/math3/FieldElement;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 866
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "value":Lorg/apache/commons/math3/FieldElement;, "TT;"
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    invoke-static {v0, p1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 867
    return-void
.end method

.method public setEntry(ILorg/apache/commons/math3/FieldElement;)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 826
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p2, "value":Lorg/apache/commons/math3/FieldElement;, "TT;"
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aput-object p2, v0, p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 829
    goto :goto_0

    .line 827
    :catch_0
    move-exception v0

    .line 828
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->checkIndex(I)V

    .line 830
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_0
    return-void
.end method

.method public setSubVector(ILorg/apache/commons/math3/linear/FieldVector;)V
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 836
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p2, "v":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    :try_start_0
    move-object v0, p2

    check-cast v0, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->set(ILorg/apache/commons/math3/linear/ArrayFieldVector;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 841
    goto :goto_1

    .line 842
    :catch_0
    move-exception v0

    goto :goto_2

    .line 837
    :catch_1
    move-exception v0

    .line 838
    .local v0, "cce":Ljava/lang/ClassCastException;
    move v1, p1

    .local v1, "i":I
    :goto_0
    :try_start_1
    invoke-interface {p2}, Lorg/apache/commons/math3/linear/FieldVector;->getDimension()I

    move-result v2

    add-int/2addr v2, p1

    if-ge v1, v2, :cond_0

    .line 839
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    sub-int v3, v1, p1

    invoke-interface {p2, v3}, Lorg/apache/commons/math3/linear/FieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v3

    aput-object v3, v2, v1
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 838
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 845
    .end local v0    # "cce":Ljava/lang/ClassCastException;
    .end local v1    # "i":I
    :cond_0
    :goto_1
    goto :goto_3

    .line 843
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_2
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->checkIndex(I)V

    .line 844
    invoke-interface {p2}, Lorg/apache/commons/math3/linear/FieldVector;->getDimension()I

    move-result v1

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->checkIndex(I)V

    .line 846
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_3
    return-void
.end method

.method public subtract(Lorg/apache/commons/math3/linear/ArrayFieldVector;)Lorg/apache/commons/math3/linear/ArrayFieldVector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/ArrayFieldVector<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/ArrayFieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 493
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "v":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    iget-object v0, p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->checkVectorDimensions(I)V

    .line 494
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v1, v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    .line 495
    .local v0, "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 496
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v2, v2, v1

    iget-object v3, p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v3, v3, v1

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/FieldElement;

    aput-object v2, v0, v1

    .line 495
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 498
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object v1
.end method

.method public subtract(Lorg/apache/commons/math3/linear/FieldVector;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 473
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "v":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->subtract(Lorg/apache/commons/math3/linear/ArrayFieldVector;)Lorg/apache/commons/math3/linear/ArrayFieldVector;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 474
    :catch_0
    move-exception v0

    .line 475
    .local v0, "cce":Ljava/lang/ClassCastException;
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->checkVectorDimensions(Lorg/apache/commons/math3/linear/FieldVector;)V

    .line 476
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v2, v2

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/commons/math3/FieldElement;

    .line 477
    .local v1, "out":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 478
    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v3, v3, v2

    invoke-interface {p1, v2}, Lorg/apache/commons/math3/linear/FieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    aput-object v3, v1, v2

    .line 477
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 480
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object v2
.end method

.method public toArray()[Lorg/apache/commons/math3/FieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .line 871
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/FieldElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    return-object v0
.end method

.method public walkInDefaultOrder(Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;)Lorg/apache/commons/math3/FieldElement;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 990
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "visitor":Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;, "Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->getDimension()I

    move-result v0

    .line 991
    .local v0, "dim":I
    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;->start(III)V

    .line 992
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 993
    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;->visit(ILorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/FieldElement;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->setEntry(ILorg/apache/commons/math3/FieldElement;)V

    .line 992
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 995
    .end local v1    # "i":I
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object v1

    return-object v1
.end method

.method public walkInDefaultOrder(Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;II)Lorg/apache/commons/math3/FieldElement;
    .locals 2
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor<",
            "TT;>;II)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1014
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "visitor":Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;, "Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor<TT;>;"
    invoke-direct {p0, p2, p3}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->checkIndices(II)V

    .line 1015
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->getDimension()I

    move-result v0

    invoke-interface {p1, v0, p2, p3}, Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;->start(III)V

    .line 1016
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-gt v0, p3, :cond_0

    .line 1017
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;->visit(ILorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/FieldElement;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->setEntry(ILorg/apache/commons/math3/FieldElement;)V

    .line 1016
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1019
    .end local v0    # "i":I
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    return-object v0
.end method

.method public walkInDefaultOrder(Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;)Lorg/apache/commons/math3/FieldElement;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 910
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "visitor":Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;, "Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->getDimension()I

    move-result v0

    .line 911
    .local v0, "dim":I
    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;->start(III)V

    .line 912
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 913
    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;->visit(ILorg/apache/commons/math3/FieldElement;)V

    .line 912
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 915
    .end local v1    # "i":I
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object v1

    return-object v1
.end method

.method public walkInDefaultOrder(Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;II)Lorg/apache/commons/math3/FieldElement;
    .locals 2
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor<",
            "TT;>;II)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 934
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "visitor":Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;, "Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor<TT;>;"
    invoke-direct {p0, p2, p3}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->checkIndices(II)V

    .line 935
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->getDimension()I

    move-result v0

    invoke-interface {p1, v0, p2, p3}, Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;->start(III)V

    .line 936
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-gt v0, p3, :cond_0

    .line 937
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;->visit(ILorg/apache/commons/math3/FieldElement;)V

    .line 936
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 939
    .end local v0    # "i":I
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    return-object v0
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;)Lorg/apache/commons/math3/FieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1035
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "visitor":Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;, "Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->walkInDefaultOrder(Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;)Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    return-object v0
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;II)Lorg/apache/commons/math3/FieldElement;
    .locals 1
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor<",
            "TT;>;II)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1056
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "visitor":Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;, "Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->walkInDefaultOrder(Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    return-object v0
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;)Lorg/apache/commons/math3/FieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 955
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "visitor":Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;, "Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->walkInDefaultOrder(Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;)Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    return-object v0
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;II)Lorg/apache/commons/math3/FieldElement;
    .locals 1
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor<",
            "TT;>;II)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 976
    .local p0, "this":Lorg/apache/commons/math3/linear/ArrayFieldVector;, "Lorg/apache/commons/math3/linear/ArrayFieldVector<TT;>;"
    .local p1, "visitor":Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;, "Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->walkInDefaultOrder(Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    return-object v0
.end method
