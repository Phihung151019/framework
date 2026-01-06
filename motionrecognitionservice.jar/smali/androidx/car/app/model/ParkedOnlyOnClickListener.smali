.class public final Landroidx/car/app/model/ParkedOnlyOnClickListener;
.super Ljava/lang/Object;
.source "ParkedOnlyOnClickListener.java"

# interfaces
.implements Landroidx/car/app/model/OnClickListener;


# instance fields
.field private final mListener:Landroidx/car/app/model/OnClickListener;


# direct methods
.method private constructor <init>(Landroidx/car/app/model/OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroidx/car/app/model/OnClickListener;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Landroidx/car/app/model/ParkedOnlyOnClickListener;->mListener:Landroidx/car/app/model/OnClickListener;

    .line 77
    return-void
.end method

.method public static create(Landroidx/car/app/model/OnClickListener;)Landroidx/car/app/model/ParkedOnlyOnClickListener;
    .locals 2
    .param p0, "listener"    # Landroidx/car/app/model/OnClickListener;

    .line 72
    new-instance v0, Landroidx/car/app/model/ParkedOnlyOnClickListener;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/model/OnClickListener;

    invoke-direct {v0, v1}, Landroidx/car/app/model/ParkedOnlyOnClickListener;-><init>(Landroidx/car/app/model/OnClickListener;)V

    return-object v0
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .line 58
    iget-object v0, p0, Landroidx/car/app/model/ParkedOnlyOnClickListener;->mListener:Landroidx/car/app/model/OnClickListener;

    invoke-interface {v0}, Landroidx/car/app/model/OnClickListener;->onClick()V

    .line 59
    return-void
.end method
