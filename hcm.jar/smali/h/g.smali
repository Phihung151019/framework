.class Lh/g;
.super Ljava/lang/Object;
.source "SystemParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:I


# direct methods
.method constructor <init>(ILjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lh/g;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Lh/g;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Lh/g;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lh/g;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public b()I
    .locals 0

    .line 1
    iget p0, p0, Lh/g;->c:I

    .line 2
    .line 3
    return p0
.end method

.method public c()I
    .locals 0

    .line 1
    iget p0, p0, Lh/g;->a:I

    .line 2
    .line 3
    return p0
.end method
