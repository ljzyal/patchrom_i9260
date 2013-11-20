.class public Lcom/android/OriginalSettings/LocalePicker;
.super Lcom/android/internal/app/LocalePicker;
.source "LocalePicker.java"

# interfaces
.implements Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/internal/app/LocalePicker;-><init>()V

    .line 29
    invoke-virtual {p0, p0}, Lcom/android/OriginalSettings/LocalePicker;->setLocaleSelectionListener(Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;)V

    .line 30
    return-void
.end method


# virtual methods
.method public exchangeLocaleOrder()V
    .locals 13

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LocalePicker;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 53
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    if-nez v0, :cond_0

    .line 146
    :goto_0
    return-void

    .line 58
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    .line 59
    .local v2, finalSize:I
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 61
    .local v6, mContext:Landroid/content/Context;
    new-array v5, v2, [Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 62
    .local v5, localeInfos:[Lcom/android/internal/app/LocalePicker$LocaleInfo;
    new-array v10, v2, [Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 64
    .local v10, mTempLocales:[Lcom/android/internal/app/LocalePicker$LocaleInfo;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 65
    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    aput-object v11, v10, v3

    .line 64
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 67
    :cond_1
    invoke-static {v10}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 69
    const-string v11, "CHN"

    const-string v12, "ro.csc.sales_code"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "CHM"

    const-string v12, "ro.csc.sales_code"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "CHC"

    const-string v12, "ro.csc.sales_code"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "CHU"

    const-string v12, "ro.csc.sales_code"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "CTC"

    const-string v12, "ro.csc.sales_code"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 74
    :cond_2
    const/4 v11, 0x4

    new-array v9, v11, [Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 75
    .local v9, mFindLocales:[Lcom/android/internal/app/LocalePicker$LocaleInfo;
    const/4 v11, 0x4

    new-array v8, v11, [I

    .line 76
    .local v8, mFindIndexs:[I
    const/4 v7, 0x0

    .line 79
    .local v7, mFindCounts:I
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_3

    .line 80
    aget-object v11, v10, v3

    invoke-virtual {v11}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "zh_CN"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 81
    aget-object v11, v10, v3

    aput-object v11, v9, v7

    .line 82
    aput v3, v8, v7

    .line 83
    add-int/lit8 v7, v7, 0x1

    .line 88
    :cond_3
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_4

    .line 89
    aget-object v11, v10, v3

    invoke-virtual {v11}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "en_US"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 90
    aget-object v11, v10, v3

    aput-object v11, v9, v7

    .line 91
    aput v3, v8, v7

    .line 92
    add-int/lit8 v7, v7, 0x1

    .line 97
    :cond_4
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_5

    .line 98
    aget-object v11, v10, v3

    invoke-virtual {v11}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "en_GB"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 99
    aget-object v11, v10, v3

    aput-object v11, v9, v7

    .line 100
    aput v3, v8, v7

    .line 101
    add-int/lit8 v7, v7, 0x1

    .line 106
    :cond_5
    const/4 v3, 0x0

    :goto_5
    if-ge v3, v2, :cond_6

    .line 107
    aget-object v11, v10, v3

    invoke-virtual {v11}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "ko_KR"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 108
    aget-object v11, v10, v3

    aput-object v11, v9, v7

    .line 109
    aput v3, v8, v7

    .line 110
    add-int/lit8 v7, v7, 0x1

    .line 119
    :cond_6
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v9, v11, v5, v12, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    move v4, v7

    .line 123
    .local v4, j:I
    const/4 v3, 0x0

    :goto_6
    if-ge v3, v2, :cond_10

    .line 124
    const/4 v11, 0x4

    if-ne v7, v11, :cond_c

    .line 125
    const/4 v11, 0x0

    aget v11, v8, v11

    if-eq v11, v3, :cond_7

    const/4 v11, 0x1

    aget v11, v8, v11

    if-eq v11, v3, :cond_7

    const/4 v11, 0x2

    aget v11, v8, v11

    if-eq v11, v3, :cond_7

    const/4 v11, 0x3

    aget v11, v8, v11

    if-ne v11, v3, :cond_d

    .line 123
    :cond_7
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 79
    .end local v4           #j:I
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 88
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 97
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 106
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 127
    .restart local v4       #j:I
    :cond_c
    const/4 v11, 0x3

    if-ne v7, v11, :cond_e

    .line 128
    const/4 v11, 0x0

    aget v11, v8, v11

    if-eq v11, v3, :cond_7

    const/4 v11, 0x1

    aget v11, v8, v11

    if-eq v11, v3, :cond_7

    const/4 v11, 0x2

    aget v11, v8, v11

    if-eq v11, v3, :cond_7

    .line 137
    :cond_d
    aget-object v11, v10, v3

    aput-object v11, v5, v4

    .line 138
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 130
    :cond_e
    const/4 v11, 0x2

    if-ne v7, v11, :cond_f

    .line 131
    const/4 v11, 0x0

    aget v11, v8, v11

    if-eq v11, v3, :cond_7

    const/4 v11, 0x1

    aget v11, v8, v11

    if-ne v11, v3, :cond_d

    goto :goto_7

    .line 133
    :cond_f
    const/4 v11, 0x1

    if-ne v7, v11, :cond_d

    .line 134
    const/4 v11, 0x0

    aget v11, v8, v11

    if-ne v11, v3, :cond_d

    goto :goto_7

    .line 142
    .end local v4           #j:I
    .end local v7           #mFindCounts:I
    .end local v8           #mFindIndexs:[I
    .end local v9           #mFindLocales:[Lcom/android/internal/app/LocalePicker$LocaleInfo;
    :cond_10
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v11, 0x109009b

    const v12, 0x102018a

    invoke-direct {v1, v6, v11, v12, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 145
    .local v1, arrayAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/LocalePicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0
.end method

.method public onLocaleSelected(Ljava/util/Locale;)V
    .locals 1
    .parameter "locale"

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 47
    invoke-static {p1}, Lcom/android/OriginalSettings/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    .line 48
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 34
    invoke-super {p0}, Lcom/android/internal/app/LocalePicker;->onResume()V

    .line 35
    const-string v0, "CHN"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CHM"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CHC"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CHU"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CTC"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LocalePicker;->exchangeLocaleOrder()V

    .line 42
    :cond_1
    return-void
.end method
