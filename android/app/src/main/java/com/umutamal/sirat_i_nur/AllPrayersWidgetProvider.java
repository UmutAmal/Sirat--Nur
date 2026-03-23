package com.umutamal.sirat_i_nur;

import android.appwidget.AppWidgetManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.widget.RemoteViews;
import es.antonborri.home_widget.HomeWidgetProvider;

public class AllPrayersWidgetProvider extends HomeWidgetProvider {

    @Override
    public void onUpdate(Context context, AppWidgetManager appWidgetManager, int[] appWidgetIds, SharedPreferences widgetData) {
        for (int appWidgetId : appWidgetIds) {
            
            RemoteViews views = new RemoteViews(context.getPackageName(), R.layout.widget_all_prayers);

            String fajrTime = widgetData.getString("fajr", "--:--");
            String dhuhrTime = widgetData.getString("dhuhr", "--:--");
            String asrTime = widgetData.getString("asr", "--:--");
            String maghribTime = widgetData.getString("maghrib", "--:--");
            String ishaTime = widgetData.getString("isha", "--:--");

            views.setTextViewText(R.id.tv_fajr, fajrTime);
            views.setTextViewText(R.id.tv_dhuhr, dhuhrTime);
            views.setTextViewText(R.id.tv_asr, asrTime);
            views.setTextViewText(R.id.tv_maghrib, maghribTime);
            views.setTextViewText(R.id.tv_isha, ishaTime);

            appWidgetManager.updateAppWidget(appWidgetId, views);
        }
    }
}
