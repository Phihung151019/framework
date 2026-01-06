.class public final Landroidx/car/app/model/constraints/ActionsConstraints;
.super Ljava/lang/Object;
.source "ActionsConstraints.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/model/constraints/ActionsConstraints$Builder;
    }
.end annotation


# static fields
.field public static final ACTIONS_CONSTRAINTS_BODY:Landroidx/car/app/model/constraints/ActionsConstraints;

.field public static final ACTIONS_CONSTRAINTS_BODY_WITH_PRIMARY_ACTION:Landroidx/car/app/model/constraints/ActionsConstraints;

.field private static final ACTIONS_CONSTRAINTS_CONSERVATIVE:Landroidx/car/app/model/constraints/ActionsConstraints;

.field public static final ACTIONS_CONSTRAINTS_FAB:Landroidx/car/app/model/constraints/ActionsConstraints;

.field public static final ACTIONS_CONSTRAINTS_HEADER:Landroidx/car/app/model/constraints/ActionsConstraints;

.field public static final ACTIONS_CONSTRAINTS_MAP:Landroidx/car/app/model/constraints/ActionsConstraints;

.field public static final ACTIONS_CONSTRAINTS_MULTI_HEADER:Landroidx/car/app/model/constraints/ActionsConstraints;

.field public static final ACTIONS_CONSTRAINTS_NAVIGATION:Landroidx/car/app/model/constraints/ActionsConstraints;

.field public static final ACTIONS_CONSTRAINTS_ROW:Landroidx/car/app/model/constraints/ActionsConstraints;

.field public static final ACTIONS_CONSTRAINTS_SIMPLE:Landroidx/car/app/model/constraints/ActionsConstraints;

.field public static final ACTIONS_CONSTRAINTS_TABS:Landroidx/car/app/model/constraints/ActionsConstraints;
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x6
    .end annotation
.end field


# instance fields
.field private final mAllowedActionTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisallowedActionTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxActions:I

.field private final mMaxCustomTitles:I

.field private final mMaxPrimaryActions:I

.field private final mOnClickListenerAllowed:Z

.field private final mRequireActionBackgroundColor:Z

.field private final mRequireActionIcons:Z

.field private final mRequiredActionTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTitleTextConstraints:Landroidx/car/app/model/constraints/CarTextConstraints;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 51
    new-instance v0, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;

    invoke-direct {v0}, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;-><init>()V

    .line 53
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->setMaxActions(I)Landroidx/car/app/model/constraints/ActionsConstraints$Builder;

    move-result-object v0

    .line 54
    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->setRequireActionIcons(Z)Landroidx/car/app/model/constraints/ActionsConstraints$Builder;

    move-result-object v0

    .line 55
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->setOnClickListenerAllowed(Z)Landroidx/car/app/model/constraints/ActionsConstraints$Builder;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->build()Landroidx/car/app/model/constraints/ActionsConstraints;

    move-result-object v0

    sput-object v0, Landroidx/car/app/model/constraints/ActionsConstraints;->ACTIONS_CONSTRAINTS_HEADER:Landroidx/car/app/model/constraints/ActionsConstraints;

    .line 62
    new-instance v0, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;

    invoke-direct {v0}, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;-><init>()V

    .line 64
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->setMaxActions(I)Landroidx/car/app/model/constraints/ActionsConstraints$Builder;

    move-result-object v0

    .line 65
    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->setRequireActionIcons(Z)Landroidx/car/app/model/constraints/ActionsConstraints$Builder;

    move-result-object v0

    .line 66
    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->setOnClickListenerAllowed(Z)Landroidx/car/app/model/constraints/ActionsConstraints$Builder;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->build()Landroidx/car/app/model/constraints/ActionsConstraints;

    move-result-object v0

    sput-object v0, Landroidx/car/app/model/constraints/ActionsConstraints;->ACTIONS_CONSTRAINTS_MULTI_HEADER:Landroidx/car/app/model/constraints/ActionsConstraints;

    .line 70
    new-instance v0, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;

    invoke-direct {v0}, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;-><init>()V

    sget-object v3, Landroidx/car/app/model/constraints/CarTextConstraints;->CONSERVATIVE:Landroidx/car/app/model/constraints/CarTextConstraints;

    .line 72
    invoke-virtual {v0, v3}, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->setTitleTextConstraints(Landroidx/car/app/model/constraints/CarTextConstraints;)Landroidx/car/app/model/constraints/ActionsConstraints$Builder;

    move-result-object v0

    .line 73
    invoke-virtual {v0, v2}, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->setMaxActions(I)Landroidx/car/app/model/constraints/ActionsConstraints$Builder;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->build()Landroidx/car/app/model/constraints/ActionsConstraints;

    move-result-object v0

    sput-object v0, Landroidx/car/app/model/constraints/ActionsConstraints;->ACTIONS_CONSTRAINTS_CONSERVATIVE:Landroidx/car/app/model/constraints/ActionsConstraints;

    .line 79
    new-instance v0, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;

    sget-object v3, Landroidx/car/app/model/constraints/ActionsConstraints;->ACTIONS_CONSTRAINTS_CONSERVATIVE:Landroidx/car/app/model/constraints/ActionsConstraints;

    invoke-direct {v0, v3}, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;-><init>(Landroidx/car/app/model/constraints/ActionsConstraints;)V

    sget-object v3, Landroidx/car/app/model/constraints/CarTextConstraints;->COLOR_ONLY:Landroidx/car/app/model/constraints/CarTextConstraints;

    .line 81
    invoke-virtual {v0, v3}, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->setTitleTextConstraints(Landroidx/car/app/model/constraints/CarTextConstraints;)Landroidx/car/app/model/constraints/ActionsConstraints$Builder;

    move-result-object v0

    .line 82
    invoke-virtual {v0, v2}, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->setMaxCustomTitles(I)Landroidx/car/app/model/constraints/ActionsConstraints$Builder;

    move-result-object v0

    .line 83
    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->setOnClickListenerAllowed(Z)Landroidx/car/app/model/constraints/ActionsConstraints$Builder;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->build()Landroidx/car/app/model/constraints/ActionsConstraints;

    move-result-object v0

    sput-object v0, Landroidx/car/app/model/constraints/ActionsConstraints;->ACTIONS_CONSTRAINTS_BODY:Landroidx/car/app/model/constraints/ActionsConstraints;

    .line 90
    new-instance v0, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;

    sget-object v3, Landroidx/car/app/model/constraints/ActionsConstraints;->ACTIONS_CONSTRAINTS_CONSERVATIVE:Landroidx/car/app/model/constraints/ActionsConstraints;

    invoke-direct {v0, v3}, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;-><init>(Landroidx/car/app/model/constraints/ActionsConstraints;)V

    sget-object v3, Landroidx/car/app/model/constraints/CarTextConstraints;->COLOR_ONLY:Landroidx/car/app/model/constraints/CarTextConstraints;

    .line 92
    invoke-virtual {v0, v3}, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->setTitleTextConstraints(Landroidx/car/app/model/constraints/CarTextConstraints;)Landroidx/car/app/model/constraints/ActionsConstraints$Builder;

    move-result-object v0

    .line 93
    invoke-virtual {v0, v2}, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->setMaxCustomTitles(I)Landroidx/car/app/model/constraints/ActionsConstraints$Builder;

    move-result-object v0

    .line 94
    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->setMaxPrimaryActions(I)Landroidx/car/app/model/constraints/ActionsConstraints$Builder;

    move-result-object v0

    .line 95
    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->setOnClickListenerAllowed(Z)Landroidx/car/app/model/constraints/ActionsConstraints$Builder;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->build()Landroidx/car/app/model/constraints/ActionsConstraints;

    move-result-object v0

    sput-object v0, Landroidx/car/app/model/constraints/ActionsConstraints;->ACTIONS_CONSTRAINTS_BODY_WITH_PRIMARY_ACTION:Landroidx/car/app/model/constraints/ActionsConstraints;

    .line 102
    new-instance v0, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;

    sget-object v2, Landroidx/car/app/model/constraints/ActionsConstraints;->ACTIONS_CONSTRAINTS_CONSERVATIVE:Landroidx/car/app/model/constraints/ActionsConstraints;

    invoke-direct {v0, v2}, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;-><init>(Landroidx/car/app/model/constraints/ActionsConstraints;)V

    .line 104
    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->setMaxCustomTitles(I)Landroidx/car/app/model/constraints/ActionsConstraints$Builder;

    move-result-object v0

    sget-object v2, Landroidx/car/app/model/constraints/CarTextConstraints;->TEXT_ONLY:Landroidx/car/app/model/constraints/CarTextConstraints;

    .line 105
    invoke-virtual {v0, v2}, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->setTitleTextConstraints(Landroidx/car/app/model/constraints/CarTextConstraints;)Landroidx/car/app/model/constraints/ActionsConstraints$Builder;

    move-result-object v0

    .line 106
    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->setOnClickListenerAllowed(Z)Landroidx/car/app/model/constraints/ActionsConstraints$Builder;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->build()Landroidx/car/app/model/constraints/ActionsConstraints;

    move-result-object v0

    sput-object v0, Landroidx/car/app/model/constraints/ActionsConstraints;->ACTIONS_CONSTRAINTS_SIMPLE:Landroidx/car/app/model/constraints/ActionsConstraints;

    .line 111
    new-instance v0, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;

    sget-object v2, Landroidx/car/app/model/constraints/ActionsConstraints;->ACTIONS_CONSTRAINTS_CONSERVATIVE:Landroidx/car/app/model/constraints/ActionsConstraints;

    invoke-direct {v0, v2}, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;-><init>(Landroidx/car/app/model/constraints/ActionsConstraints;)V

    .line 113
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->setMaxActions(I)Landroidx/car/app/model/constraints/ActionsConstraints$Builder;

    move-result-object v0

    .line 114
    invoke-virtual {v0, v2}, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->setMaxCustomTitles(I)Landroidx/car/app/model/constraints/ActionsConstraints$Builder;

    move-result-object v0

    sget-object v3, Landroidx/car/app/model/constraints/CarTextConstraints;->TEXT_AND_ICON:Landroidx/car/app/model/constraints/CarTextConstraints;

    .line 115
    invoke-virtual {v0, v3}, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->setTitleTextConstraints(Landroidx/car/app/model/constraints/CarTextConstraints;)Landroidx/car/app/model/constraints/ActionsConstraints$Builder;

    move-result-object v0

    .line 116
    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->setOnClickListenerAllowed(Z)Landroidx/car/app/model/constraints/ActionsConstraints$Builder;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->build()Landroidx/car/app/model/constraints/ActionsConstraints;

    move-result-object v0

    sput-object v0, Landroidx/car/app/model/constraints/ActionsConstraints;->ACTIONS_CONSTRAINTS_NAVIGATION:Landroidx/car/app/model/constraints/ActionsConstraints;

    .line 125
    new-instance v0, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;

    sget-object v3, Landroidx/car/app/model/constraints/ActionsConstraints;->ACTIONS_CONSTRAINTS_CONSERVATIVE:Landroidx/car/app/model/constraints/ActionsConstraints;

    invoke-direct {v0, v3}, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;-><init>(Landroidx/car/app/model/constraints/ActionsConstraints;)V

    .line 127
    invoke-virtual {v0, v2}, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->setMaxActions(I)Landroidx/car/app/model/constraints/ActionsConstraints$Builder;

    move-result-object v0

    .line 128
    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->setOnClickListenerAllowed(Z)Landroidx/car/app/model/constraints/ActionsConstraints$Builder;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->build()Landroidx/car/app/model/constraints/ActionsConstraints;

    move-result-object v0

    sput-object v0, Landroidx/car/app/model/constraints/ActionsConstraints;->ACTIONS_CONSTRAINTS_MAP:Landroidx/car/app/model/constraints/ActionsConstraints;

    .line 136
    new-instance v0, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;

    invoke-direct {v0}, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;-><init>()V

    .line 138
    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->setMaxActions(I)Landroidx/car/app/model/constraints/ActionsConstraints$Builder;

    move-result-object v0

    .line 139
    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->setMaxCustomTitles(I)Landroidx/car/app/model/constraints/ActionsConstraints$Builder;

    move-result-object v0

    .line 140
    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->addAllowedActionType(I)Landroidx/car/app/model/constraints/ActionsConstraints$Builder;

    move-result-object v0

    .line 141
    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->setRequireActionIcons(Z)Landroidx/car/app/model/constraints/ActionsConstraints$Builder;

    move-result-object v0

    .line 142
    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->setOnClickListenerAllowed(Z)Landroidx/car/app/model/constraints/ActionsConstraints$Builder;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->build()Landroidx/car/app/model/constraints/ActionsConstraints;

    move-result-object v0

    sput-object v0, Landroidx/car/app/model/constraints/ActionsConstraints;->ACTIONS_CONSTRAINTS_ROW:Landroidx/car/app/model/constraints/ActionsConstraints;

    .line 151
    new-instance v0, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;

    invoke-direct {v0}, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;-><init>()V

    .line 153
    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->setMaxActions(I)Landroidx/car/app/model/constraints/ActionsConstraints$Builder;

    move-result-object v0

    .line 154
    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->addAllowedActionType(I)Landroidx/car/app/model/constraints/ActionsConstraints$Builder;

    move-result-object v0

    .line 155
    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->setRequireActionIcons(Z)Landroidx/car/app/model/constraints/ActionsConstraints$Builder;

    move-result-object v0

    .line 156
    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->setRequireActionBackgroundColor(Z)Landroidx/car/app/model/constraints/ActionsConstraints$Builder;

    move-result-object v0

    .line 157
    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->setOnClickListenerAllowed(Z)Landroidx/car/app/model/constraints/ActionsConstraints$Builder;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->build()Landroidx/car/app/model/constraints/ActionsConstraints;

    move-result-object v0

    sput-object v0, Landroidx/car/app/model/constraints/ActionsConstraints;->ACTIONS_CONSTRAINTS_FAB:Landroidx/car/app/model/constraints/ActionsConstraints;

    .line 163
    new-instance v0, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;

    sget-object v1, Landroidx/car/app/model/constraints/ActionsConstraints;->ACTIONS_CONSTRAINTS_HEADER:Landroidx/car/app/model/constraints/ActionsConstraints;

    invoke-direct {v0, v1}, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;-><init>(Landroidx/car/app/model/constraints/ActionsConstraints;)V

    .line 165
    const v1, 0x10002

    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->addRequiredActionType(I)Landroidx/car/app/model/constraints/ActionsConstraints$Builder;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->build()Landroidx/car/app/model/constraints/ActionsConstraints;

    move-result-object v0

    sput-object v0, Landroidx/car/app/model/constraints/ActionsConstraints;->ACTIONS_CONSTRAINTS_TABS:Landroidx/car/app/model/constraints/ActionsConstraints;

    .line 163
    return-void
.end method

.method constructor <init>(Landroidx/car/app/model/constraints/ActionsConstraints$Builder;)V
    .locals 3
    .param p1, "builder"    # Landroidx/car/app/model/constraints/ActionsConstraints$Builder;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iget v0, p1, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->mMaxActions:I

    iput v0, p0, Landroidx/car/app/model/constraints/ActionsConstraints;->mMaxActions:I

    .line 181
    iget v0, p1, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->mMaxPrimaryActions:I

    iput v0, p0, Landroidx/car/app/model/constraints/ActionsConstraints;->mMaxPrimaryActions:I

    .line 182
    iget v0, p1, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->mMaxCustomTitles:I

    iput v0, p0, Landroidx/car/app/model/constraints/ActionsConstraints;->mMaxCustomTitles:I

    .line 183
    iget-object v0, p1, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->mTitleTextConstraints:Landroidx/car/app/model/constraints/CarTextConstraints;

    iput-object v0, p0, Landroidx/car/app/model/constraints/ActionsConstraints;->mTitleTextConstraints:Landroidx/car/app/model/constraints/CarTextConstraints;

    .line 184
    iget-boolean v0, p1, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->mRequireActionIcons:Z

    iput-boolean v0, p0, Landroidx/car/app/model/constraints/ActionsConstraints;->mRequireActionIcons:Z

    .line 185
    iget-boolean v0, p1, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->mRequireActionBackgroundColor:Z

    iput-boolean v0, p0, Landroidx/car/app/model/constraints/ActionsConstraints;->mRequireActionBackgroundColor:Z

    .line 186
    iget-boolean v0, p1, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->mOnClickListenerAllowed:Z

    iput-boolean v0, p0, Landroidx/car/app/model/constraints/ActionsConstraints;->mOnClickListenerAllowed:Z

    .line 187
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p1, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->mRequiredActionTypes:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroidx/car/app/model/constraints/ActionsConstraints;->mRequiredActionTypes:Ljava/util/Set;

    .line 188
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p1, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->mAllowedActionTypes:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroidx/car/app/model/constraints/ActionsConstraints;->mAllowedActionTypes:Ljava/util/Set;

    .line 190
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p1, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->mDisallowedActionTypes:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 191
    .local v0, "disallowedActionTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v1, p0, Landroidx/car/app/model/constraints/ActionsConstraints;->mRequiredActionTypes:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 192
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 197
    iget-object v1, p1, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->mDisallowedActionTypes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/car/app/model/constraints/ActionsConstraints;->mAllowedActionTypes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Both disallowed and allowed action type set cannot be defined."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 202
    :cond_1
    :goto_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p1, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->mDisallowedActionTypes:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Landroidx/car/app/model/constraints/ActionsConstraints;->mDisallowedActionTypes:Ljava/util/Set;

    .line 204
    iget-object v1, p0, Landroidx/car/app/model/constraints/ActionsConstraints;->mRequiredActionTypes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iget v2, p0, Landroidx/car/app/model/constraints/ActionsConstraints;->mMaxActions:I

    if-gt v1, v2, :cond_2

    .line 208
    return-void

    .line 205
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required action types exceeded max allowed actions"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 193
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Disallowed action types cannot also be in the required set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public areActionIconsRequired()Z
    .locals 1

    .line 254
    iget-boolean v0, p0, Landroidx/car/app/model/constraints/ActionsConstraints;->mRequireActionIcons:Z

    return v0
.end method

.method public getAllowedActionTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Landroidx/car/app/model/constraints/ActionsConstraints;->mAllowedActionTypes:Ljava/util/Set;

    return-object v0
.end method

.method public getDisallowedActionTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 240
    iget-object v0, p0, Landroidx/car/app/model/constraints/ActionsConstraints;->mDisallowedActionTypes:Ljava/util/Set;

    return-object v0
.end method

.method public getMaxActions()I
    .locals 1

    .line 212
    iget v0, p0, Landroidx/car/app/model/constraints/ActionsConstraints;->mMaxActions:I

    return v0
.end method

.method public getMaxCustomTitles()I
    .locals 1

    .line 222
    iget v0, p0, Landroidx/car/app/model/constraints/ActionsConstraints;->mMaxCustomTitles:I

    return v0
.end method

.method public getMaxPrimaryActions()I
    .locals 1

    .line 217
    iget v0, p0, Landroidx/car/app/model/constraints/ActionsConstraints;->mMaxPrimaryActions:I

    return v0
.end method

.method public getRequiredActionTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Landroidx/car/app/model/constraints/ActionsConstraints;->mRequiredActionTypes:Ljava/util/Set;

    return-object v0
.end method

.method public getTitleTextConstraints()Landroidx/car/app/model/constraints/CarTextConstraints;
    .locals 1

    .line 228
    iget-object v0, p0, Landroidx/car/app/model/constraints/ActionsConstraints;->mTitleTextConstraints:Landroidx/car/app/model/constraints/CarTextConstraints;

    return-object v0
.end method

.method public isActionBackgroundColorRequired()Z
    .locals 1

    .line 262
    iget-boolean v0, p0, Landroidx/car/app/model/constraints/ActionsConstraints;->mRequireActionBackgroundColor:Z

    return v0
.end method

.method public isOnClickListenerAllowed()Z
    .locals 1

    .line 267
    iget-boolean v0, p0, Landroidx/car/app/model/constraints/ActionsConstraints;->mOnClickListenerAllowed:Z

    return v0
.end method

.method public validateOrThrow(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/car/app/model/Action;",
            ">;)V"
        }
    .end annotation

    .line 280
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Landroidx/car/app/model/Action;>;"
    iget v0, p0, Landroidx/car/app/model/constraints/ActionsConstraints;->mMaxActions:I

    .line 281
    .local v0, "maxAllowedActions":I
    iget v1, p0, Landroidx/car/app/model/constraints/ActionsConstraints;->mMaxPrimaryActions:I

    .line 282
    .local v1, "maxAllowedPrimaryActions":I
    iget v2, p0, Landroidx/car/app/model/constraints/ActionsConstraints;->mMaxCustomTitles:I

    .line 285
    .local v2, "maxAllowedCustomTitles":I
    iget-object v3, p0, Landroidx/car/app/model/constraints/ActionsConstraints;->mRequiredActionTypes:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 286
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    goto :goto_0

    .line 287
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    iget-object v4, p0, Landroidx/car/app/model/constraints/ActionsConstraints;->mRequiredActionTypes:Ljava/util/Set;

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_0
    nop

    .line 289
    .local v3, "requiredTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/car/app/model/Action;

    .line 290
    .local v5, "action":Landroidx/car/app/model/Action;
    iget-object v6, p0, Landroidx/car/app/model/constraints/ActionsConstraints;->mDisallowedActionTypes:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Landroidx/car/app/model/constraints/ActionsConstraints;->mDisallowedActionTypes:Ljava/util/Set;

    .line 291
    invoke-virtual {v5}, Landroidx/car/app/model/Action;->getType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_2

    .line 292
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    invoke-virtual {v5}, Landroidx/car/app/model/Action;->getType()I

    move-result v7

    invoke-static {v7}, Landroidx/car/app/model/Action;->typeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is disallowed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 296
    :cond_2
    :goto_2
    iget-object v6, p0, Landroidx/car/app/model/constraints/ActionsConstraints;->mAllowedActionTypes:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Landroidx/car/app/model/constraints/ActionsConstraints;->mAllowedActionTypes:Ljava/util/Set;

    .line 297
    invoke-virtual {v5}, Landroidx/car/app/model/Action;->getType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_3

    .line 298
    :cond_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    invoke-virtual {v5}, Landroidx/car/app/model/Action;->getType()I

    move-result v7

    invoke-static {v7}, Landroidx/car/app/model/Action;->typeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not allowed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 302
    :cond_4
    :goto_3
    invoke-virtual {v5}, Landroidx/car/app/model/Action;->getType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 304
    invoke-virtual {v5}, Landroidx/car/app/model/Action;->getTitle()Landroidx/car/app/model/CarText;

    move-result-object v6

    .line 305
    .local v6, "title":Landroidx/car/app/model/CarText;
    const-string v7, "Action list exceeded max number of "

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Landroidx/car/app/model/CarText;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    .line 306
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_5

    .line 313
    iget-object v8, p0, Landroidx/car/app/model/constraints/ActionsConstraints;->mTitleTextConstraints:Landroidx/car/app/model/constraints/CarTextConstraints;

    invoke-virtual {v8, v6}, Landroidx/car/app/model/constraints/CarTextConstraints;->validateOrThrow(Landroidx/car/app/model/CarText;)V

    goto :goto_4

    .line 307
    :cond_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroidx/car/app/model/constraints/ActionsConstraints;->mMaxCustomTitles:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " actions with custom titles"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 316
    :cond_6
    :goto_4
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_10

    .line 321
    invoke-virtual {v5}, Landroidx/car/app/model/Action;->getFlags()I

    move-result v8

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_8

    .line 322
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_7

    goto :goto_5

    .line 323
    :cond_7
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroidx/car/app/model/constraints/ActionsConstraints;->mMaxPrimaryActions:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " primary actions"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 330
    :cond_8
    :goto_5
    iget-boolean v7, p0, Landroidx/car/app/model/constraints/ActionsConstraints;->mRequireActionIcons:Z

    if-eqz v7, :cond_a

    invoke-virtual {v5}, Landroidx/car/app/model/Action;->getIcon()Landroidx/car/app/model/CarIcon;

    move-result-object v7

    if-nez v7, :cond_a

    invoke-virtual {v5}, Landroidx/car/app/model/Action;->isStandard()Z

    move-result v7

    if-eqz v7, :cond_9

    goto :goto_6

    .line 331
    :cond_9
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v7, "Non-standard actions without an icon are disallowed"

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 335
    :cond_a
    :goto_6
    iget-boolean v7, p0, Landroidx/car/app/model/constraints/ActionsConstraints;->mRequireActionBackgroundColor:Z

    if-eqz v7, :cond_d

    .line 336
    invoke-virtual {v5}, Landroidx/car/app/model/Action;->getBackgroundColor()Landroidx/car/app/model/CarColor;

    move-result-object v7

    if-eqz v7, :cond_b

    sget-object v7, Landroidx/car/app/model/CarColor;->DEFAULT:Landroidx/car/app/model/CarColor;

    .line 337
    invoke-virtual {v5}, Landroidx/car/app/model/Action;->getBackgroundColor()Landroidx/car/app/model/CarColor;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/car/app/model/CarColor;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 338
    :cond_b
    invoke-virtual {v5}, Landroidx/car/app/model/Action;->isStandard()Z

    move-result v7

    if-eqz v7, :cond_c

    goto :goto_7

    .line 339
    :cond_c
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v7, "Non-standard actions without a background color are disallowed"

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 343
    :cond_d
    :goto_7
    iget-boolean v7, p0, Landroidx/car/app/model/constraints/ActionsConstraints;->mOnClickListenerAllowed:Z

    if-nez v7, :cond_f

    .line 344
    invoke-virtual {v5}, Landroidx/car/app/model/Action;->getOnClickDelegate()Landroidx/car/app/model/OnClickDelegate;

    move-result-object v7

    if-eqz v7, :cond_f

    .line 345
    invoke-virtual {v5}, Landroidx/car/app/model/Action;->isStandard()Z

    move-result v7

    if-eqz v7, :cond_e

    goto :goto_8

    .line 346
    :cond_e
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v7, "Setting a click listener for a custom action is disallowed"

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 349
    .end local v5    # "action":Landroidx/car/app/model/Action;
    .end local v6    # "title":Landroidx/car/app/model/CarText;
    :cond_f
    :goto_8
    goto/16 :goto_1

    .line 317
    .restart local v5    # "action":Landroidx/car/app/model/Action;
    .restart local v6    # "title":Landroidx/car/app/model/CarText;
    :cond_10
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroidx/car/app/model/constraints/ActionsConstraints;->mMaxActions:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " actions"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 351
    .end local v5    # "action":Landroidx/car/app/model/Action;
    .end local v6    # "title":Landroidx/car/app/model/CarText;
    :cond_11
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_13

    .line 352
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 353
    .local v4, "missingTypeError":Ljava/lang/StringBuilder;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 354
    .local v6, "type":I
    invoke-static {v6}, Landroidx/car/app/model/Action;->typeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .end local v6    # "type":I
    goto :goto_9

    .line 356
    :cond_12
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Missing required action types: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 359
    .end local v4    # "missingTypeError":Ljava/lang/StringBuilder;
    :cond_13
    return-void
.end method
