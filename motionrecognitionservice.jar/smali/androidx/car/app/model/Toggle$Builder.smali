.class public final Landroidx/car/app/model/Toggle$Builder;
.super Ljava/lang/Object;
.source "Toggle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/model/Toggle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mIsChecked:Z

.field mIsEnabled:Z

.field mOnCheckedChangeDelegate:Landroidx/car/app/model/OnCheckedChangeDelegate;


# direct methods
.method public constructor <init>(Landroidx/car/app/model/Toggle$OnCheckedChangeListener;)V
    .locals 1
    .param p1, "onCheckedChangeListener"    # Landroidx/car/app/model/Toggle$OnCheckedChangeListener;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/car/app/model/Toggle$Builder;->mIsEnabled:Z

    .line 160
    invoke-static {p1}, Landroidx/car/app/model/OnCheckedChangeDelegateImpl;->create(Landroidx/car/app/model/Toggle$OnCheckedChangeListener;)Landroidx/car/app/model/OnCheckedChangeDelegate;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/Toggle$Builder;->mOnCheckedChangeDelegate:Landroidx/car/app/model/OnCheckedChangeDelegate;

    .line 161
    return-void
.end method


# virtual methods
.method public build()Landroidx/car/app/model/Toggle;
    .locals 1

    .line 146
    new-instance v0, Landroidx/car/app/model/Toggle;

    invoke-direct {v0, p0}, Landroidx/car/app/model/Toggle;-><init>(Landroidx/car/app/model/Toggle$Builder;)V

    return-object v0
.end method

.method public setChecked(Z)Landroidx/car/app/model/Toggle$Builder;
    .locals 0
    .param p1, "checked"    # Z

    .line 127
    iput-boolean p1, p0, Landroidx/car/app/model/Toggle$Builder;->mIsChecked:Z

    .line 128
    return-object p0
.end method

.method public setEnabled(Z)Landroidx/car/app/model/Toggle$Builder;
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x5
    .end annotation

    .line 139
    iput-boolean p1, p0, Landroidx/car/app/model/Toggle$Builder;->mIsEnabled:Z

    .line 140
    return-object p0
.end method
