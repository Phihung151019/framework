.class public Lb/g;
.super Ljava/lang/Object;
.source "LogAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lb/g;->a:I

    .line 4
    iput-object p2, p0, Lb/g;->b:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lb/g;->c:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Lb/h;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lb/g;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
